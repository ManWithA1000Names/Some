#!/bin/sh
go mod init some_go
printf "%s" 'package main

import "fmt"

func main() {
  fmt.Println("Hello, World!")
}
' >main.go
