#include <iostream>
using namespace std;
struct Table 
{
    int n;
    int m;
    int a[10][10];
    int i;
    int j;
    int z;
    int some;
    
};

int main ()
{
    Table A1;
    cout << "Entroduit le nombre de colonne et arrow pour table 2";
    cout <<endl  << "n= ";
    cin >> A1.n;
    cout <<endl << "m= ";
    cin >> A1.m;
        //____________________________________________________
        Table A2;
        cout << "Entroduit le nombre de colonne et arrow pour table 2 ";
        cout <<endl << "n= ";
        cin >> A2.n;
        cout <<endl << "m= ";
        cin >> A2.m;
    //____________________________________________________
    cout << "Table1" <<endl;
    for ( A1.i = 0; A1.i < A1.n; A1.i++)
    {
        for( A1.j = 0; A1.j < A1.m; A1.j++)
        A1.z = rand() %100;
    cout << A1.a[A1.i][A1.j]  <<"  ";
    cout << endl;
    }
    //____________________________________________________
    cout <<"Table2" <<endl;
    for ( A2.i = 0; A2.i < A2.n; A2.i++)
    {
        for( A2.j = 0; A2.j < A2.m; A2.j++)
        A2.z = rand() %100;
    cout <<A2.z  <<"  ";
    cout << endl;
    }
    for (A1.j = 0; A1.j < A1.m; A1.j++)
    A1.some = A1.some + A1.m;
    cout <<A1.some;
}
