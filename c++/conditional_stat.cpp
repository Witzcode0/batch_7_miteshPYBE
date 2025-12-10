#include <iostream>
using namespace std;

int main() {
   int age;
   
   cout<<"Enter your age: ";
   cin>>age;
   
   if(age < 18){
       cout<<"Your age is: "<<age<<endl<<"Child";
   }else{
       cout<<"Your age is: "<<age<<endl<<"Adult";
   }
    
    

    return 0;
}

#include <iostream>
using namespace std;

int main() {
   int Score;
   
   cout<<"Enter your Score: ";
   cin>>Score;
   
   if(Score >= 80){
       cout<<"Class A";
   }
   else if(Score >= 60){
       cout<<"Class B";
   }
   else if(Score >= 40){
       cout<<"Class C";
   }else{
       cout<<"Sorry, You are failed";
   }
    

    return 0;
}