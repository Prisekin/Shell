#include <stdio.h>

int main(int ac,char* av[]){
if(ac==2){
 char string[256];
 printf("count: %d, input: %s %s\n",ac,av[0],av[1]);
 FILE* script=fopen(av[1],"rt");
 while(fscanf(script,"%s",&string)!=EOF){
  if(string[0]!='#'){
    printf("result: %s\n",string);
    }
 }
}
else{printf("Use it in script.\n");}
}