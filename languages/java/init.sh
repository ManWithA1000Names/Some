#!/bin/sh
hello='public class Main {
  public static void main(String[] args) {
    System.out.println("Hello, World!");
  }
}'

echo "$hello" > Main.java
echo "*.class" > .gitignore
echo "*.jar" >> .gitignore
