**Writing my first hello world bash scrip**
To make my first hello world script 
first i create hello-world.sh file using the command 
	touch hello-world.sh
then i made excutable using the command 
	chomd +x hello-world #this makes the file to be excutable for the owner,group and others also
then i entered into hello-world.sh file using the command
	vi hello-world.sh
then using vi interface i entered
	#!/bin/bash  #this command is calledn shebang1 and tells the operating system to run /bin/bash, the bash shell, passing it the script's path as an argument 
# Hello World Bash Script

A simple, step-by-step guide to creating and running your first Bash script.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Step-by-Step Guide](#step-by-step-guide)
  - [1. Create the Script File](#1-create-the-script-file)
  - [2. Make It Executable](#2-make-it-executable)
  - [3. Edit the Script](#3-edit-the-script)
  - [4. Add the Shebang and Command](#4-add-the-shebang-and-command)
  - [5. Save and Exit](#5-save-and-exit)
  - [6. Run the Script](#6-run-the-script)
- [Explanation](#explanation)
- [Troubleshooting](#troubleshooting)
- [License](#license)

## Prerequisites
- A Linux, macOS, or WSL (Windows Subsystem for Linux) environment.
- A terminal emulator.
- A text editor such as `vi`, `vim`, `nano`, or `emacs`.
- Basic familiarity with command-line navigation.

## Step-by-Step Guide

### 1. Create the Script File
Use the `touch` command to create an empty file named `hello-world.sh`:

```bash
touch hello-world.sh	echo "Hello world"
the exit the vi interface esc key then :wq! 

then run 
	./hello-world.sh to 
