#include<stdio.h>
#include"demo/add.h"
#include"demo/checkerr.h"
int main(){
    int a = 1;
	int b = 2;
  	printf("%d+%d=%d", a, b ,add(a,b));
	checkerr(1,"hi");
	return 0;
}
