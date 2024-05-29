#include <stdio.h>
int main(int ac, char* av[]){
if(ac!=2){
 printf("Usage: %s number\n",av[0]);
 return 57;
}
 printf("All OK\n");
 long long a=atoll(av[1]);
 int ret_code=(int)((a*a*a*a*a)%251);
 return ret_code;
}
