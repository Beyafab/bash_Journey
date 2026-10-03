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
# 🐚 Bash Hello World and Command-Line Arguments

A beginner-friendly Bash scripting exercise covering:

* Creating and executing Bash scripts
* Using the Bash shebang
* Variables and variable assignment
* `printf`
* Command-line arguments
* The `$PATH` environment variable
* The `./` notation for executing scripts
* Proper quoting of variables

---

## 📌 Overview

This exercise introduces the basic structure of a Bash script and demonstrates two ways of producing a `Hello, World` message.

The first script stores `World` in a variable:

```bash
whom_variable="World"
```

and then prints it using `printf`.

The second version accepts the value from the command line:

```bash
./hello.sh World
```

and accesses it using the special Bash variable:

```bash
$1
```

Here, `$1` represents the **first command-line argument** passed to the script.

---

# 1. Create the Script

Create a file named:

```text
hello.sh
```

You can create it with:

```bash
touch hello.sh
```

Then open it with an editor such as `vi`:

```bash
vi hello.sh
```

---

# 2. Make the Script Executable

Give the script execute permission:

```bash
chmod +x hello.sh
```

You can verify the permissions with:

```bash
ls -l hello.sh
```

You should see an executable permission similar to:

```text
-rwxr-xr-x
```

---

# 3. Hello World Using a Variable

Add the following code to `hello.sh`:

```bash
#!/usr/bin/env bash

# Note that spaces cannot be used around the = assignment operator
whom_variable="World"

# Use printf to safely output the data
printf "Hello, %s\n" "$whom_variable"
```

Run the script:

```bash
./hello.sh
```

### Expected output

```text
Hello, World
```

---

# 🧠 Understanding the Script

## The Shebang

```bash
#!/usr/bin/env bash
```

The first line is called the **shebang**.

It tells the operating system to use Bash to interpret the script.

Using:

```bash
#!/usr/bin/env bash
```

allows the system to locate Bash through the `env` command rather than assuming that Bash is located specifically at `/bin/bash`.

---

## Bash Variables

The following creates a variable:

```bash
whom_variable="World"
```

In Bash, there must be **no spaces around `=`**.

### Correct

```bash
name="Beyene"
```

### Incorrect

```bash
name = "Beyene"
```

Bash would interpret the second version differently and produce an error.

---

## Using a Variable

To access the value stored in a variable, use `$`:

```bash
"$whom_variable"
```

Therefore:

```bash
printf "Hello, %s\n" "$whom_variable"
```

prints:

```text
Hello, World
```

---

# 4. Why Use `printf`?

The script uses:

```bash
printf "Hello, %s\n" "$whom_variable"
```

instead of:

```bash
echo "Hello, $whom_variable"
```

`printf` provides predictable and controlled formatting and is commonly preferred in portable shell scripting.

### Format string

```text
"Hello, %s\n"
```

contains:

* `%s` → placeholder for a string
* `\n` → newline

The value of:

```bash
"$whom_variable"
```

is inserted into `%s`.

---

# 5. Running the Script with `./`

Execute the script with:

```bash
./hello.sh
```

The `./` means:

```text
.
```

= current directory

Therefore:

```text
./hello.sh
```

means:

> Execute `hello.sh` from the current directory.

---

# 🧠 Why Can't We Just Type `hello.sh`?

If you run:

```bash
hello.sh
```

Bash searches the directories listed in the `$PATH` environment variable for an executable with that name.

The current directory is normally **not included in `$PATH`** for security reasons.

You can inspect your `$PATH` with:

```bash
echo "$PATH"
```

You may see something similar to:

```text
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

Since the current directory is not necessarily listed there, Bash will not automatically find:

```text
hello.sh
```

Using:

```bash
./hello.sh
```

explicitly tells Bash where the file is located.

---

# 6. Using Command-Line Arguments

Now we can make the script more useful by allowing the user to provide the name from the command line.

Replace the contents of `hello.sh` with:

```bash
#!/usr/bin/env bash

printf "Hello, %s\n" "$1"
```

Run it with:

```bash
./hello.sh World
```

Output:

```text
Hello, World
```

You can also try:

```bash
./hello.sh Beyene
```

Output:

```text
Hello, Beyene
```

Or:

```bash
./hello.sh Linux
```

Output:

```text
Hello, Linux
```

---

# 7. Understanding `$1`

Bash provides special variables for command-line arguments.

For example:

```bash
./hello.sh World
```

The script receives:

```text
$1 = World
```

Therefore:

```bash
printf "Hello, %s\n" "$1"
```

becomes conceptually:

```bash
printf "Hello, %s\n" "World"
```

and produces:

```text
Hello, World
```

---

# 🔢 Common Bash Argument Variables

| Variable | Meaning                              |
| -------- | ------------------------------------ |
| `$0`     | Name/path used to execute the script |
| `$1`     | First command-line argument          |
| `$2`     | Second command-line argument         |
| `$3`     | Third command-line argument          |
| `$#`     | Number of arguments                  |
| `$@`     | All positional arguments             |
| `$?`     | Exit status of the previous command  |

For example:

```bash
./hello.sh Addis Ababa
```

The arguments are:

```text
$1 = Addis
$2 = Ababa
```

---

# 8. Why `"$1"` Instead of `'$1'`?

This is an important Bash concept.

### Correct

```bash
printf "Hello, %s\n" "$1"
```

Double quotes allow Bash to **expand the variable**.

So:

```bash
"$1"
```

becomes:

```text
World
```

when the script is executed with:

```bash
./hello.sh World
```

---

### Incorrect for this purpose

```bash
printf "Hello, %s\n" '$1'
```

Single quotes prevent variable expansion.

Bash treats:

```text
'$1'
```

as the literal text:

```text
$1
```

Therefore, the output would be:

```text
Hello, $1
```

instead of:

```text
Hello, World
```

### Easy rule to remember

```text
"$variable"   → expand the variable
'$variable'   → treat it as literal text
```

---

# 9. Why Quoting Matters

Consider:

```bash
./hello.sh Addis Ababa
```

Bash interprets this as **two arguments**:

```text
$1 = Addis
$2 = Ababa
```

If you want `Addis Ababa` to be treated as one argument, quote it:

```bash
./hello.sh "Addis Ababa"
```

Now:

```text
$1 = Addis Ababa
```

This is one reason quoting variables and arguments is an important Bash scripting habit.

---

# 🧪 Practice Examples

Try running:

```bash
./hello.sh World
```

```bash
./hello.sh Linux
```

```bash
./hello.sh Bash
```

```bash
./hello.sh "Addis Ababa"
```

```bash
./hello.sh "Cloud Engineer"
```

Observe how the output changes.

---

# 🔧 Troubleshooting

## Permission Denied

If you get:

```text
Permission denied
```

run:

```bash
chmod +x hello.sh
```

Then:

```bash
./hello.sh World
```

---

## Command Not Found

If you run:

```bash
hello.sh
```

and receive:

```text
command not found
```

use:

```bash
./hello.sh
```

The `./` explicitly specifies the current directory.

---

## Check the Script

You can view the contents with:

```bash
cat hello.sh
```

---

## Check File Permissions

```bash
ls -l hello.sh
```

---

# 🧠 Key Takeaways

### 1. Bash scripts normally start with a shebang

```bash
#!/usr/bin/env bash
```

### 2. Bash variables cannot have spaces around `=`

```bash
name="Beyene"
```

### 3. Variables are expanded using `$`

```bash
echo "$name"
```

### 4. `printf` provides controlled output formatting

```bash
printf "Hello, %s\n" "$name"
```

### 5. `./` explicitly executes a file from the current directory

```bash
./hello.sh
```

### 6. `$1` represents the first command-line argument

```bash
./hello.sh World
```

```text
$1 = World
```

### 7. Double quotes allow variable expansion

```bash
"$1"
```

### 8. Single quotes prevent variable expansion

```bash
'$1'
```

---

# 🚀 Final Script

The final command-line argument version is:

```bash
#!/usr/bin/env bash

printf "Hello, %s\n" "$1"
```

Make it executable:

```bash
chmod +x hello.sh
```

Run it:

```bash
./hello.sh World
```

Result:

```text
Hello, World
```

---

## 📚 Next Steps

Now that basic Bash arguments are understood, the next useful topics to practice are:

1. Multiple arguments: `$1`, `$2`, `$3`
2. Checking the number of arguments with `$#`
3. Processing all arguments with `$@`
4. Variables and user input with `read`
5. `if` statements
6. `for` and `while` loops
7. Exit status and `$?`
8. Functions
9. File and directory checks
10. Bash scripts for Linux system administration and network troubleshooting

> **Goal:** Move from simple scripts that print text to scripts that actually automate Linux administration tasks.
