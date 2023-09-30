#!/bin/sh
mkdir src
printf '#include <stio.h>

int main(void) {
  printf("Hello, World!\\n");
  return 0;
}' >src/main.c
echo "build/" >> .gitignore
