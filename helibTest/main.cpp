#include <iostream>
#include <time.h>
#include <random>

#include <helib/helib.h>
#include <helib/debugging.h>
#include <helib/Context.h>
#include <helib/polyEval.h>
#include "tools.h"
#include "comparator.h"
#include "sorting.cpp"
#include "compare.cpp"
#include "minmax.cpp"

using namespace std;
using namespace NTL;
using namespace helib;
using namespace he_cmp;

int main(int argc, char* argv[])
{
    /*  Example of BGV scheme  */

    // Plaintext prime modulus
    //unsigned long p = 81667;
    // Cyclotomic polynomial - defines phi(m)
    //unsigned long m = 32109;
    // Hensel lifting (default = 1)
    //unsigned long r = 1;
    // Number of bits of the modulus chain
    //unsigned long bits = 500;
    // Number of columns of Key-Switching matrix (default = 2 or 3)
    //unsigned long c = 2;

    char *variableList[9];

    for(int i=0; i<sizeof(variableList); i++){
        variableList[i] = new char[1000];
    }

    cout << "Please set arguments to all 8 variables:" << endl;
    cout << "plaintext modulus (prime number):" << endl;
    cin >> variableList[0];
    cout << "dimension of a vector space over slot finite field:" << endl;
    cin >> variableList[1];
    cout << "order of cyclotomic ring:" << endl;
    cin >> variableList[2];
    cout << "min bitsize of the ciphertext modulus in ciphertext:" << endl;
    cin >> variableList[3];
    cout << "length of field vector:" << endl;
    cin >> variableList[4];
    cout << "number of values to be sorted:" << endl;
    cin >> variableList[5];
    cout << "number of experiments:" << endl;
    cin >> variableList[6];
    cout << "type of circuit(B,T,U):" << endl;
    cin >> variableList[7];
    cout << "level of consecutive comparison (depth):" << endl;
    cin >> variableList[8];

    int input;

    cout << "Choose the function you want to run:" << endl;
    cout << "1) comparison " << endl;
    cout << "2) sorting " << endl;
    cout << "3) minmax " << endl;
    cin >> input;

    switch(input){
        case 1:
            compare_function(variableList);
        case 2:
            sorting_function(variableList);
        case 3:
            minmax_function(variableList);
        default:
            cout << "Invalid choice!" << endl;
    }

    return 0;
}
