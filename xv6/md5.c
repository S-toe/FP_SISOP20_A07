#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
#include "md5.h"

void concatenate_string(char *original, char *add)
{
   while(*original)
      original++;
     
   while(*add)
   {
      *original = *add;
      add++;
      original++;
   }
   *original = '\0';
}

int
main(int argc, char *argv[])
{
  char result[1000];
  char before[1000];
  for(i=1;i<=argc;i++){
    concatenate_string(before, argv[i]);
  }
  getmd5(argv[1],32,result)
  printf(1, "%s\n",result);
  exit();
}
