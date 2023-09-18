#include <iostream>
#include <vector>
#include <sys/time.h>
#include <time.h>
#include <getopt.h>
#include <string>
#include <filesystem>
#include "omp.h"
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
#include "host_data_io.h"
#include "host_data.h"
#include "host_kernel.h"

using namespace std;
using namespace NTL;
using namespace helib;
using namespace he_cmp;

// the main function that takes  arguments (type in Terminal: ./sorting_circuit argv[1] argv[2] argv[3] argv[4] argv[5] argv[6] argv[7] argv[8])
// variable[0] - the plaintext modulus
// variable[1] - the dimension of a vector space over a finite field
// variable[2] - the order of the cyclotomic ring
// variable[3] - the bitsize of the ciphertext modulus in ciphertexts (HElib increases it to fit the moduli chain). The modulus used for public-key generation
// variable[4] - the length of vectors to be compared
// variable[5] - the number of values to be sorted
// variable[6] - the number of experiment repetitions
// variable[7] - circuit type (U, B or T)
// variable[8] - the number of tournament stages

// some parameters for comparison testing
// B 7 1 75 90 1 10 y
// B 7 1 300 90 1 10 y
// U 17 1 145 120 1 10 y

// some parameters for min/max testing
// 7 1 75 90 1 4 1 10 y
// 7 1 300 90 1 6 2 10 y
// 17 1 145 120 1 7 2 10 y

// some parameters for sorting testing
// 7 1 75 90 1 4 10 y
// 7 1 300 90 1 6 10 y
// 17 1 145 120 1 7 10 y
int main(int argc, char* argv[])
{
    /*  Example of BGV scheme  */

    // Plaintext prime modulus
    //unsigned long p = 429000079;
    // Cyclotomic polynomial - defines phi(m)
    //unsigned long m = 32109;
    // Hensel lifting (default = 1)
    //unsigned long r = 1;
    // Number of bits of the modulus chain
    //unsigned long bits = 500;
    // Number of columns of Key-Switching matrix (default = 2 or 3)
    //unsigned long c = 2;

    /*FILE *in, *out;
    string resultDir, inputFileName, outputFileName;
    resultDir = filesystem::current_path().parent_path().parent_path().parent_path().parent_path() / "input-datasets" / "chain" / "small";
    //cout << resultDir << endl;
    inputFileName = resultDir + "/in-1k.txt";
    outputFileName = resultDir + "/output.txt";

    fprintf(stderr, "Input file:%s\n", inputFileName.c_str());
    fprintf(stderr, "Output file:%s\n", outputFileName.c_str());

    in = fopen(inputFileName.c_str(), "r");
    out = fopen(outputFileName.c_str(), "w");

    if (in == NULL) {
        perror("Error opening input file");
        return 1; // Exit with an error code
    }

    if (out == NULL) {
        perror("Error opening output file");
        return 1; // Exit with an error code
    }

    vector<longseeds> seeds;
    vector<call_t> calls;
    vector<return_t> rets;

    uint64_t x;
    uint64_t y;

    for(call_t call = read_call(in); call.n != ANCHOR_NULL; call = read_call(in)){
        calls.push_back(call);
    }

    *//*for(int i=0; i<calls[0].n; i++){
        x = calls[0].anchors[i].x;
        y = calls[0].anchors[i].x;
        cout << "seed[" << i << "]: x = " << x << ", y = " << y << endl;
    }*//*

    // Initialize 'seeds' vector with the same number of elements as 'calls'
    seeds.resize(5);

    for (int i = 0; i < 5; i++) {
        // Copy 'anchors' from 'call_t' to 'seeds' in 'longseeds'
        seeds[i].seeds = calls[i].anchors;
    }

    for(int i=0; i<5; i++){
        seeds[0].seeds[i].x = seeds[0].seeds[i].x/40000;
        seeds[0].seeds[i].y = seeds[0].seeds[i].y/40000;
        x = seeds[0].seeds[i].x;
        y = seeds[0].seeds[i].y;
        cout << "seed[" << i << "]: x = " << x << ", y = " << y << endl;
    }

    rets.resize(calls.size());*/

    /*struct timeval start_time, end_time;
    double runtime = 0;

    gettimeofday(&start_time, NULL);
    host_chain_kernel(calls, rets);
    gettimeofday(&end_time, NULL);

    runtime += (end_time.tv_sec - start_time.tv_sec) * 1e6 + (end_time.tv_usec - start_time.tv_usec);

    for(auto it = rets.begin(); it != rets.end(); it++){
        print_return(out, *it);
    }

    fprintf(stderr, "Time in kernel: %.2g sec\n", runtime * 1e-6);*/


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
            break;
        case 2:
            sorting_function(variableList);
            break;
        case 3:
            minmax_function(variableList);
            break;
        default:
            cout << "Invalid choice!" << endl;
            break;
    }

    /*fclose(in);
    fclose(out);*/
    return 0;
}
