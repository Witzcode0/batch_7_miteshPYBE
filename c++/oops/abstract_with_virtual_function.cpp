#include<iostream>
using namespace std;

class Vehical{
    public:
    virtual void VehicalName() = 0;
    void vehical(){
        cout<<"I am vehical"<<endl;
    }
};

class Truck: public Vehical{
    public:
    void VehicalName() {
        cout<<"I am Truck"<<endl;
    }
};
class Car: public Vehical{
    public:
    void VehicalName() {
        cout<<"I am Car"<<endl;
    }
};

int main(){
    
    Vehical* truck = new Truck();
    Vehical* car = new Car();
    
    truck->VehicalName();
    car->VehicalName();
    truck->vehical();
    car->vehical();
    
}