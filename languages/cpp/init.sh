#!/bin/sh
mkdir src
printf '#include <iostream>

int main(void) {
  std::cout << "Hello, World!" << std::endl;
  return 0;
}' >src/main.cpp
echo "build/" >>.gitignore
