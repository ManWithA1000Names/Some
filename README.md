# Language specific scratch pads powered by `nix & make`

Get dropped in a file of language by simply running:

```sh
    some <language name>
```

To see all the supported languages and the rest of the usage run the `some` command by it self.

When for example you run `some rust`, the command will use nix to generate a template project
located at /tmp/some\_\<language name\> and it will execute your "$EDITOR" in that directory.
If your $EDITOR environment variable is not set, it will excecute a bash shell in that directory.

All projects templates contain a Makefile which have the following rules:

- build: Compile the project (prints message, if not applicable).
- release: Compile the project in build mode (fallbacks to build, if applicable).
- run: Run the project.
- run-release: Run the project in release mode (fallback to run, if applicable).
- test: Run the buildin test framework (prints message, if the language does not provide one).

Thusly, you do not need to know the details of how it the project is executed you can just run `make run` (ideal when learning).

When you exit your editor or shell after you are done working on your temporary storage, the directory /tmp/some*\<language name\> will NOT be removed.
BUT!!! The next time you call `some <language name>` the previous project located in /tmp/some*... will be overwritten and everything you have written will be removed!
If you whish to save your project after exiting the editor/shell use the `some --save ...` command to save your progress to another directory, although this is defeating the purpose of the program.

If you whish to delete all leftover directories to conserve space, you can run the `some --clean ...` command.

View the usage of `some` to learn more about these options.
