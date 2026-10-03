# 🐧 My First Hello World Bash Script

My first step into **Bash scripting on Linux**.

In this exercise, I created a simple Bash script that prints `Hello, World!` to the terminal. The goal was to understand the basic workflow of creating a script, making it executable, editing it, and running it from the command line.

---

## 🎯 What I Learned

Through this simple exercise, I practiced:

* Creating files from the Linux terminal
* Using `touch`
* Changing file permissions with `chmod`
* Editing files with `vi`
* Understanding the Bash shebang
* Using the `echo` command
* Running an executable Bash script
* Understanding Linux file execution permissions

---

## 📋 Prerequisites

You need:

* A Linux environment
* A terminal
* Bash
* A text editor such as `vi`, `vim`, or `nano`

This example was created and tested in a Linux terminal.

---

# 🚀 Step-by-Step Guide

## 1. Create the Script File

First, I created an empty file called `hello-world.sh` using the `touch` command:

```bash
touch hello-world.sh
```

The command creates the file without adding any content to it.

You can verify that the file exists with:

```bash
ls
```

Or:

```bash
ls -l hello-world.sh
```

---

## 2. Make the Script Executable

Next, I changed the file permissions so that the script could be executed:

```bash
chmod +x hello-world.sh
```

### What does `chmod +x` mean?

* `chmod` = change file permissions
* `+x` = add execute permission

The execute permission is added for the **owner, group, and others**, subject to the system's permission settings and `umask`.

You can check the permissions with:

```bash
ls -l hello-world.sh
```

You should see execute permissions, similar to:

```text
-rwxr-xr-x
```

---

## 3. Open the Script with `vi`

I then opened the file using the `vi` editor:

```bash
vi hello-world.sh
```

When `vi` opens, it starts in **normal mode**.

To start entering text, press:

```text
i
```

This enters **insert mode**.

---

## 4. Add the Shebang

At the top of the file, I added:

```bash
#!/bin/bash
```

This is called a **shebang**.

The shebang tells the operating system which interpreter should be used to execute the script.

In this case:

```text
#!       → identifies the interpreter directive
/bin/bash → specifies Bash as the interpreter
```

So:

```bash
#!/bin/bash
```

means that the script should be interpreted using Bash located at `/bin/bash`.

---

## 5. Add the Hello World Command

After the shebang, I added:

```bash
echo "Hello, World!"
```

The `echo` command prints text to the terminal.

The complete script is therefore:

```bash
#!/bin/bash

echo "Hello, World!"
```

---

# 💾 6. Save and Exit `vi`

After entering the script:

1. Press `Esc`
2. Type:

```text
:wq!
```

3. Press `Enter`

### What does `:wq!` mean?

```text
:   → enter a vi command
w   → write/save the file
q   → quit vi
!   → force the operation
```

So:

```text
:wq!
```

means save the file and exit the editor.

---

# ▶️ 7. Run the Script

Now that the script is executable, run it from the current directory:

```bash
./hello-world.sh
```

Expected output:

```text
Hello, World!
```

🎉 **My first Bash script works!**

---

# 🔍 Understanding the Script

The entire script contains only two lines:

```bash
#!/bin/bash
echo "Hello, World!"
```

### Line 1

```bash
#!/bin/bash
```

Specifies Bash as the interpreter.

### Line 2

```bash
echo "Hello, World!"
```

Prints the message to the terminal.

---

# 🧠 Why Do We Use `./`?

When running the script, we use:

```bash
./hello-world.sh
```

The `./` means:

> Run the file from the current directory.

Linux does not normally search the current directory when you type a command.

For example, this may not work:

```bash
hello-world.sh
```

But this works:

```bash
./hello-world.sh
```

because we explicitly specify the current directory.

---

# 🛠️ Troubleshooting

## Permission Denied

If you get:

```text
Permission denied
```

make sure the script has execute permission:

```bash
chmod +x hello-world.sh
```

Then run:

```bash
./hello-world.sh
```

---

## No Such File or Directory

If you get:

```text
./hello-world.sh: No such file or directory
```

check your current directory:

```bash
pwd
```

Then check whether the file exists:

```bash
ls -l
```

---

## Check the Script Content

You can display the contents without opening `vi`:

```bash
cat hello-world.sh
```

Expected:

```bash
#!/bin/bash

echo "Hello, World!"
```

---

# 🔄 Another Way to Run the Script

Because the script specifies Bash in its shebang, you can also execute it explicitly with Bash:

```bash
bash hello-world.sh
```

This does not require the executable permission.

For example:

```bash
chmod -x hello-world.sh
bash hello-world.sh
```

will still work.

However:

```bash
./hello-world.sh
```

requires the file to have execute permission.

---

# 📌 Important Commands

| Command                   | Purpose                     |
| ------------------------- | --------------------------- |
| `touch hello-world.sh`    | Create an empty script file |
| `chmod +x hello-world.sh` | Add execute permission      |
| `vi hello-world.sh`       | Edit the script             |
| `cat hello-world.sh`      | Display the script          |
| `ls -l hello-world.sh`    | Check file permissions      |
| `./hello-world.sh`        | Execute the script          |
| `bash hello-world.sh`     | Run the script through Bash |
| `pwd`                     | Show the current directory  |

---

# 💡 What I Learned

This was a very simple script, but it introduced me to an important Linux workflow:

```text
Create
  ↓
Edit
  ↓
Add interpreter
  ↓
Add commands
  ↓
Set permissions
  ↓
Execute
  ↓
Verify output
```

The next step is to move beyond static output and start using **variables, user input, conditions, loops, functions, and command-line arguments**.

---

## 🚀 Next Bash Practice

After `Hello World`, good exercises include:

1. Create a script that asks for the user's name.
2. Create a script that checks whether a file exists.
3. Create a script that displays system information.
4. Create a script that checks disk usage.
5. Create a script that checks whether a service is running.
6. Create a simple Linux network troubleshooting script.

These exercises will gradually turn Bash from a basic scripting language into a useful **Linux system administration and networking tool**.
