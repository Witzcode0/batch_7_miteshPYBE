#include <iostream>
using namespace std;

int main() {
   int num = 5;
   
   for(int start = 1; start<=num; start++){
       for(int col = 1; col <= num; col++){
           cout<<" *";
       }
       cout<<endl;
   }
    

    return 0;
}

 *
 * *
 * * *
 * * * *
 * * * * *

 #include <iostream>
using namespace std;

int main() {
   int num = 5;
   
   for(int start = 1; start<=num; start++){
       for(int col = 1; col <= start; col++){
           cout<<" *";
       }
       cout<<endl;
   }
    

    return 0;
}

         *
       * *
     * * *
   * * * *
 * * * * *

 #include <iostream>
using namespace std;

int main() {
   int num = 5;
   
   for(int start = 1; start<=num; start++){
       for(int col = 1; col <= num - start; col++){
           cout<<"  ";
       }
       for(int col = 1; col <= start; col++){
           cout<<" *";
       }
       cout<<endl;
   }
    

    return 0;
}