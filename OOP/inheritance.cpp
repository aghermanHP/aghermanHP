#include <iostream>
using namespace std;
class Whell {
    public:
    void setwhel1 (bool w1) {
        whel1 = w1;
    }
    void setwhel2(bool w2) {
        whel2 = w2;
    }

    protected:
    bool whel1;
    bool whel2;
};
class Bicycle: public Whell {
    public:
    string getTyp() {
       if ((whel1 == true) && (whel2 == true))
       return "Normal Bicycle ";
       else 
       return "1 whel Bicycle ";
      
       ; 
    }
};
int  main (void) {
    Bicycle Bike1, Bike2;
    Bike1.setwhel1 (true);
    Bike1.setwhel2 (true);
    Bike2.setwhel1 (false);
    Bike2.setwhel2 (true);

    cout << "the bycicle number 1 is: " <<Bike1.getTyp() <<endl cout << "the bycicle number 2 is: " <<Bike2.getTyp();
    return 1;
}