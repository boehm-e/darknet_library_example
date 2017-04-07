#include <stdio.h>
extern void run_yolo(int argc, const char **argv);
int main(int argc, char const *argv[]) {
  printf("%d\n", argc);
  printf("%s\n", argv[0]);
  run_yolo(argc, argv);
  return 0;
}


// /usr/local/lib/libdarknet.a
//  gcc -L/usr/local/lib main.c libdarknet.a -lpthread  -L/usr/local/lib -lopencv_core -lopencv_highgui -lm
