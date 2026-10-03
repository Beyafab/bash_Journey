Create a new ﬁle called hello.sh with the following content and give it executable permissions with chmod +x
hello.sh.
Execute/Run via: ./hello.sh
#!/usr/bin/env bash
# Note that spaces cannot be used around the `=` assignment operator
whom_variable="World"
# Use printf to safely output the data
printf "Hello, %s\n" "$whom_variable"
#> Hello, World
This will print Hello, World to standard output when executed.
To tell bash where the script is you need to be very speciﬁc, by pointing it to the containing directory, normally with
./ if it is your working directory, where . is an alias to the current directory. If you do not specify the directory, bash
tries to locate the script in one of the directories contained in the $PATH environment variable.
The following code accepts an argument $1, which is the ﬁrst command line argument, and outputs it in a
formatted string, following Hello,.
Execute/Run via: ./hello.sh World
#!/usr/bin/env bash
printf "Hello, %s\n" "$1"
#> Hello, World
It is important to note that $1 has to be quoted in double quote, not single quote. "$1" expands to the ﬁrst
command line argument, as desired, while '$1' evaluates to literal string $1.
