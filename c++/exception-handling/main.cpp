#include <iostream>
#include <stdexcept>
using namespace std;


int main(){
    float bal = 1000.0;
    float wb;
    try{
        cout<<"Enter withdraw balance : ";
        cin>>wb;

        if(wb>bal){
            throw invalid_argument("Insufficent balance");
        }else{
            cout<<"Now your remaining amount is : "<<bal-wb<<endl;
        }
    }catch(const invalid_argument& err){
        cerr << "Caught exception: " << err.what() << endl;
    }
}

