# Language specific scratch pads powered by `nix & make`

Get dropped in a file of a chosen language by simply running:

```sh
    some <language name>
```

To see all the supported languages and the rest of the usage run the `some` command by it self.

When for example you run `some rust`, the command will use nix to generate a template project
located at /tmp/some\_\<language name\> and it will execute your `$EDITOR` in that directory.
If your `$EDITOR` environment variable is not set, it will excecute a bash shell in that directory.

All projects templates contain a Makefile which has the following rules:

- build: Compile the project (prints message, if not applicable).
- release: Compile the project in release mode (fallbacks to build, if not applicable).
- run: Run the project.
- run-release: Run the project in release mode (fallback to run, if not applicable).
- test: Run the built in test framework (prints message, if the language does not provide one).

Thusly, you do not need to know the details of how the project is executed you can just run `make run` (ideal when learning).

### Behind the scenes

When you exit your editor or shell after you are done working on your temporary projects, the directory /tmp/some\_\<language name\> will NOT be removed.
BUT!!! The next time you call `some <language name>` the previous project located in /tmp/some\_\<language name\> will be overwritten and or removed!
If you whish to save your project after exiting the editor/shell use the `some --save <language name>` command to save your progress to another directory, although this is defeating the purpose of the program.

If you whish to delete all left over directories to save space, you can run the `some --clean [<language name>]` command.

View the usage of `some` to learn more about these options.

## Installation

You can either:

```sh
nix profile install "gihtub:ManWithA1000Names/Some"
```

or

```
git clone https://github.com/ManWithA1000Names/Some.git
cd Some && make install
```

View `ADDING_A_LANGUAGE.md` on how you can contribute by adding support for another language.
