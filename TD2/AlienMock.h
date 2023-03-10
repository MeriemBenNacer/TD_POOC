//
// Created by dechaiss on 10/18/22.
//

#ifndef PROTO_TD_ALIEN_ALIENMOCK_H
#define PROTO_TD_ALIEN_ALIENMOCK_H

#define  MPI_COMM_WORLD

#include <iostream>
namespace Arccore {
  namespace MessagePassing {
    namespace Mpi {
      struct ParallelMng{};
      struct StandaloneMpiMessagePassingMng {
        static ParallelMng* create() {return nullptr;}
      };
    }
      }

  struct Stream{};
  struct TraceMng{
    Stream stream;
    Stream& info() {return stream;}
  };
  inline TraceMng* arccoreCreateDefaultTraceMng() {return new TraceMng{};} // faire le delete

}

template <typename T>
std::ostream& operator<<(Arccore::Stream const&, T data){
  return std::cout << data << std::endl;
}

namespace Alien {
  inline void setTraceMng(Arccore::TraceMng*) {}
  enum class Verbosity{Debug};
  inline void setVerbosityLevel(Verbosity){}
  enum class DirectMatrixOptions{eResetValues};

  struct Distribution{
    int rowOffset() const {return 0;}
    int localRowSize() const {return 0;}
    int globalRowSize() const {return 0;}
  };

  struct Matrix{
    Matrix (int, int, Arccore::MessagePassing::Mpi::ParallelMng*) {}
    int size1, size2;
    Arccore::MessagePassing::Mpi::ParallelMng* pmng;
    Distribution dist;
    Distribution& distribution() {return dist;}
  };

  struct DirectMatrixBuilder{
    DirectMatrixBuilder(Matrix &, DirectMatrixOptions){}
    void reserve(int){}
    void allocate(){}
    int& operator() (int,int){return mock_value;}
    int mock_value;
  };

  struct Vector{
    Vector(int, Arccore::MessagePassing::Mpi::ParallelMng*){}
    int distribution() {return 0;}
  };
  inline Vector ones(int,Arccore::MessagePassing::Mpi::ParallelMng*){ return Vector{0, nullptr}; }

  namespace Hypre{
    struct LinearAlgebra{
      void mult(Matrix const&, Vector const&, Vector&){}
      void copy(Vector const&, Vector&){}
      void axpy(int,Vector const&, Vector&){}
      double norm2(Vector) {return 0.;}
    };
    struct LinearSolver{
      void solve(Matrix const&, Vector const&, Vector&){}
    };
  }

  struct SimpleCSRLinearAlgebra {
    void mult(Matrix const&, Vector const&, Vector&){}
    void copy(Vector const&, Vector&){}
    void axpy(int,Vector const&, Vector&){}
    double norm2(Vector) {return 0.;}
};

  namespace PETSc{
    enum class OptionTypes{Jacobi, BiCGstab, CG};
    struct Options{
      void numIterationsMax(int){}
      void stopCriteriaValue(double){}
      void preconditioner(OptionTypes){}
      void solver(OptionTypes){}
    };
    struct Solver{
      void solve(Matrix const&, Vector const&, Vector&){}
    };
    inline Solver LinearSolver(Options) {return Solver{};}
  }

  struct LocalVectorReader {
    LocalVectorReader(Vector const&){}
    int size() const {return 0;}
    double operator[] (int) const {return 0.;}
  };
} //namespace Alien

#endif //PROTO_TD_ALIEN_ALIENMOCK_H
