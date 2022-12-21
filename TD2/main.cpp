#include <iostream>
#include "PETScExemple.h"
#include "HypreExemple.h"
#include "MpiMock.h"


using namespace std;

int main(int argc, char** argv){

MPI_Init(&argc, &argv);

HypreExemple HypreExemple{};
PETScExemple PETScExemple{};

HypreExemple.run();
PETScExemple.run();

cout << "Testinggg"<<endl;

MPI_Finalize();

  return 0;


}
