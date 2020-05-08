#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
#include "md5.h"

int
main(int argc, char *argv[])
{
  char result[100];
  char md5[argc*2];
  memset(md5, 0,strlen(result));
  printf(1, "%s\n",md5);
  // int j=1;
  // for(int i=1;i<=argc;i++){
  //   while (argv[i] != '\0') { 
  //       md5[j-1] = argv[i]; 
  //       if(i != argc){
  //         j++;
  //         md5[j-1]=" ";
  //       }
  //       i++; 
  //       j++; 
  //   } 
  //   md5[j] = '\0'; 
  // }
  printf(1, "%s\n",md5);
  getmd5(argv[1],strlen(argv[1]),result);
  printf(1, "%s\n",result);
  printf(1, "%s\n",md5);
  exit();
}
