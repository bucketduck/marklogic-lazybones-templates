MarkLogic Lazybones Templates
--------------------------

A series of templates that make common tooling for MarkLogic developers easier.

To use lazybones, please see the official installation documentation on [Github](https://github.com/pledbrook/lazybones/blob/master/README.md).

The following project templates are currently support:

1. mlcp
2. corb

For example, the following would setup a new directory with a functioning version of mlcp:

`lazybones create mlcp 1.0 targetDirectory`

Each template has an additional setup task to be done once the template project has been created.  In the case of mlcp, external jars need to be downloaded:

`cd targetDirectory && ./gradlew buildLibDir`

Shell scripts with reasonable defaults, populated from the interactive install window, are now available and are easily customized.