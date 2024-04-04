# Adding another language to some.

Adding another language is trivial, follow these steps:

1. Create the directory ./languages/\<language name\>.
   Where `<language name>` is the language you want the users to type (`some <language name>`).
2. Create the file: `dependencies.txt`
3. Create the file: `init.sh`
4. Create the file: `main-file.txt`
5. Create the file: `Makefile`

## `dependencies.txt`

In this file on each line put the name of a package located in the
[nixpkgs](search.nixos.org) that is needed to run/create the project.

## `init.sh`

This should be POSIX shell script (NOT bash!) that initializes the project and runs any commands that are needed to complete the setup.
The shell will be run with the current working directory being the newly created directory for the project.
Be sure the commands create the project structure in the current directory not in a subdirectory. The dependencies specified in the `dependencies.txt` will be accessible at this point.

## `main-file.txt`

The only thing contained in this file should be relative path (consider the project root is the current working directory)
to the file the editor should open when the `some` command is called and the `$EDITOR` variable is set.

## `Makefile`

The make is a standar gnu make file
that contains at least the rules:

### build

This rule compiles the project.
If the project is not compiled, is simply prints a message saying so.

### release

This rules compiles the project in release mode,
and from scratch preferably. If the language/compiler does not
differentiate between debug and release builds then fallback to the regular build rule.

### run

This rule simply executes the projects, compiling it in debug mode if needed.

### run-release

Executes the release build of th project.
If the language/compiler does not differentiate between debug and release builds,
then fallback to the regular run rule.

### test

Executes the build-in test framework if it exists.
Otherwise it prints a message saying that this language does not provide a built in testing framework.

Try to utilize the strengths of the 'make' program to minimize compilation time and promote incremental compilation.

Thats it no re-install some and you have the ability to create scratch pads for this new language.
