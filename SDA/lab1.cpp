#include <iostream>
#include <stdlib.h>
#include "head.h"
using namespace std;


int main ()
{
	  srand (int());
    Table A1;
    cout << "Entroduit le nombre de colonne et arrow pour table 2";
    cout <<endl  << "n= ";
    cin >> A1.n;
    cout <<endl << "m= ";
    cin >> A1.m;
    //____________________________________________________
    cout << "Table1" <<endl;
    for ( A1.i = 0; A1.i < A1.n; A1.i++)
    {
        for( A1.j = 0; A1.j < A1.m; A1.j++)
        cout <<rand() %10 <<" ";
    cout << endl;
    }
         //____________________________________________________
        Table A2;
        cout << "Entroduit le nombre de colonne et arrow pour table 2 ";
        cout <<endl << "n= ";
        cin >> A2.n;
        cout <<endl << "m= ";
        cin >> A2.m;
    //____________________________________________________
    cout <<"Table2" <<endl;
    for ( A2.i = 0; A2.i < A2.n; A2.i++)
    {   for( A2.j = 0; A2.j < A2.m; A2.j++)
    cout <<rand() %10  <<"  ";
    cout << endl;
    }
    
}
