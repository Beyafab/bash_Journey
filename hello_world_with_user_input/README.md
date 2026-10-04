# Bash User Input: `read` and Variables

This is a beginner Bash scripting practice project focused on reading user input from the terminal and storing that input in variables.

The project contains two simple scripts:

* `hello.sh` - Reads the user's name and prints a greeting.
* `read_line.sh` - Reads an action from the user and uses the value in another message.

## Project Structure

```text
hello_world_with_user_input/
├── hello.sh
├── read_line.sh
└── README.md
```

---

## 1. `hello.sh`

This script asks the user for their name, stores the input in a variable called `name`, and then prints a personalized greeting.

### Script

```bash
#!/bin/bash

echo "who are you"
read name
echo "hello $name"
```

### How it works

```bash
read name
```

The `read` command waits for the user to enter something and stores the input inside the variable `name`.

The variable is then accessed using:

```bash
$name
```

### Example

```text
$ ./hello.sh
who are you
Beyene
hello Beyene
```

---

## 2. `read_line.sh`

This script demonstrates how user input can be stored in a variable and then reused in another string.

### Script

```bash
#!/bin/bash

echo "what are you doing"
read action
echo "you are ${action}"
```

The input is stored in:

```bash
action
```

and referenced using:

```bash
${action}
```

### Example

```text
$ ./read_line.sh
what are you doing
studying
you are studying
```

---

## `$variable` vs `${variable}`

Bash allows variables to be referenced using:

```bash
$name
```

or:

```bash
${name}
```

Both work when the variable name is clearly separated from surrounding text.

Curly braces become especially useful when you want to append text directly after a variable.

For example:

```bash
echo "You are ${action}ing."
```

If the user enters:

```text
Sleep
```

the result is:

```text
You are Sleeping.
```

Without curly braces, Bash could interpret the variable name differently:

```bash
echo "You are $actioning."
```

Bash would look for a variable called `actioning`, rather than the variable `action` followed by `ing`.

---

## Making the Scripts Executable

Before running the scripts directly, give them execute permission:

```bash
chmod +x hello.sh
chmod +x read_line.sh
```

Then run them with:

```bash
./hello.sh
```

and:

```bash
./read_line.sh
```

You can also execute them using Bash without changing permissions:

```bash
bash hello.sh
bash read_line.sh
```

---

## Important Bash Concepts Learned

### 1. Shebang

Each script starts with:

```bash
#!/bin/bash
```

This tells the operating system to use Bash to execute the script.

### 2. `echo`

`echo` prints text to the terminal.

```bash
echo "Hello"
```

### 3. `read`

`read` receives input from the user.

```bash
read name
```

### 4. Variables

Bash variables can store information:

```bash
name="Beyene"
```

The value can then be accessed with:

```bash
$name
```

### 5. User Input

The combination of `echo` and `read` allows a Bash script to interact with the user:

```bash
echo "What is your name?"
read name
echo "Hello $name"
```

---

## Practice Challenge

Try modifying `hello.sh` so that it asks for both the user's name and their favorite Linux distribution.

For example:

```text
What is your name?
Beyene

What Linux distribution do you use?
Ubuntu

Hello Beyene!
You are using Ubuntu.
```

### Bonus Challenge

Modify `read_line.sh` so that it produces a grammatically correct sentence using the user's input.

For example:

```text
What are you doing?
study

You are studying.
```

---

## What I Learned

Through this exercise, I practiced:

* Writing basic Bash scripts
* Using the Bash shebang
* Printing messages with `echo`
* Receiving terminal input with `read`
* Storing input in variables
* Referencing variables with `$variable`
* Using `${variable}` when combining variables with additional text
* Making scripts executable with `chmod`
* Running scripts from the terminal

This is part of my **Linux/Bash learning journey**, building the scripting fundamentals needed for Linux administration, automation, and cybersecurity.
