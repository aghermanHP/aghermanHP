#include <stdio.h>
#include <math.h>
int c, m, n,p1,p2,x;
double t[10][10];
  void Date() {
    double r1,r2;
    char r;
    int i,j;
    printf("\tmaximize la function avec la methode Simplex \n "); 
    printf("\t________________________________________\n");
    printf("\n Le nombre de collone? "); scanf("%d", &c);
    printf("\n Le nombre de materielles? "); scanf("%d", &m);
      r1 = 1.0;
    printf("\n La function f=:\n");
    for (j = 1; j<=m; j++) {
      printf("x%d*", j); scanf("%lf", &r2);
      t[1][j+1] = r2 * r1;}
    printf(" =  "); scanf("%lf", &r2);
    t[1][1] = r2 * r1;
    for (i = 1; i<=c; i++) {
      printf("\n ligne %d dans le systemme:\n", i);
      for (j = 1; j<=m; j++) {
        printf(" x%d*", j) ;scanf("%lf", &r2);
        t[i + 1][j + 1] = -r2;}
      printf("       =  "); scanf("%lf", &t[i+1][1]);}
    printf("\n\n on obtien:\n\n");
    for(j=1; j<=m; j++)  t[0][j+1] = j;
    for(i=m+1; i<=m+c; i++)  t[i-m+1][0] = i;}
  void elementpiv();
  void formula();
  void optimizare();
  void MetodaSimplex() {
e10: elementpiv();
     formula();
     optimizare();
     if (n == 1) goto e10;}
  void elementpiv() {
    double b,v,xm;
    int i,j;
    xm = 0.0;
    for(j=2; j<=m+1; j++) {
	if (t[1][j] > 0.0 && t[1][j] > xm) {
        xm = t[1][j];
        p2 = j;}}
    b = 999999.0;
    for (i=2; i<=c+1; i++) {
      if (t[i][p2] >= 0.0) goto e10;
      v = fabs(t[i][1] / t[i][p2]);
      if (v < b) {
        b = v;
        p1 = i;}
e10:;}
    v = t[0][p2]; t[0][p2] = t[p1][0]; t[p1][0] = v;}
  void formula() {;
    int i,j;
    for (i=1; i<=c+1; i++) {
      if (i == p1) goto e70;
      for (j=1; j<=m+1; j++) {
        if (j == p2) goto e60;
        t[i][j] -= t[p1][j] * t[i][p2] / t[p1][p2];e60:;}
e70:;}
t[p1][p2] = 1.0 / t[p1][p2];
    for (j=1; j<=m+1; j++) {
      if (j == p2) goto e100;
      t[p1][j] *= fabs(t[p1][p2]);
e100:;}
    for (i=1; i<=c+1; i++) {
      if (i == p1) goto e110;
      t[i][p2] *= t[p1][p2];
e110:;}}   
  void optimizare() {
    int i,j;
    for (i=2; i<=c+1; i++)
      if (t[i][1] < 0.0)  x = 1;
    n = 0;
    if (x == 1)  return;
    for (j=2; j<=m+1; j++)
      if (t[1][j] > 0.0)  n = 1;}
  void Resultate() {
    int i,j;
    if (x == 0) goto e30;
    printf(" N`a pas de solution\n"); goto e100;
e30:for (i=1; i<=m; i++)
    for (j=2; j<=c+1; j++) {
      if (t[j][0] != 1.0*i) goto e70;
      printf(" la variable x%d doit etre: %f\n", i, t[j][1])
;e70:  ;}
    printf("\n  cost toatal maximale! = %f\n", t[1][1]);
e100:printf("\n");}

int main()  {
  Date();
  MetodaSimplex();
  Resultate();
  return 0;}
