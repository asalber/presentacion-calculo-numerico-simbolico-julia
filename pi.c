#include <stdio.h> 
#include <time.h> 

/*
    Calcular pi usando la fórmula de Leibniz
    Recuerda: entre más iteraciones, mayor precisión
*/

double pi(double n) {
  double pi = 0;
  int i = 0;
  int op = 1;
  for (i; i < n; i++) {
    pi += op * 4 / (2 * i + 1);
    op *= -1;
  }
  return pi;
}

int main() {
  time_t start,end;
  double dif;
  time (&start);
  pi(1000000000);
  time (&end);
  dif = difftime (end,start);
  printf ("Your calculations took %.2lf seconds to run.\n", dif );
}