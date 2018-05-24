# gitglobal - more accurate git(on)local(dir)

# Contents

-   [Prerequisite](#rerequisite)
-   [Features](#features)
-   [Usage](#usage)
-   [Additional information](#edditional information)
-   [Examples](#examples)

# Prerequisite

-   bash or ..sh command line

# Features

-   useful to `add/status/pull/push` all git repo from parent directory
-   script allows you to operate on multiple repositores in specified directory
-   choosing directory
-   choosing command

# Usage
**Syntax:**

 `gitglobal.sh path_to_parent_dir command_from_list`

 where `path_to_parent_dir` is directory of repositores

 **List of available commands -  command_from_list**
 - `push` as `git push`
 - `pull` as `git push`
 - `add` as `git push`
 - `commit` as `git push`
 - `status` as `git push`
 - `show` as `git push`

# Additional information
You can rename `gitglobal.sh` to `gitglobal` and move to your `PATH` or just add to `/usr/bin` and use command in all directories.

# Examples
```
~/github $ gitglobal . pull
git pull /home/user/github/java
warning: redirecting to https://github.com/java.git/
Already up-to-date.
git pull /home/user/github/metody-obliczeniowe
Already up-to-date.
git pull /home/user/github/sztuczna-inteligencja
warning: redirecting to https://github.com/sztuczna-inteligencja.git/
Already up-to-date.
git pull /home/user/github/configs
Already up-to-date.
git pull /home/user/github/architektura-systemow-komputerowych
warning: redirecting to https://github.com/architektura-systemow-komputerowych.git/
Already up-to-date.
git pull /home/user/github/podstawy-baz-danych
warning: redirecting to https://github.com/podstawy-baz-danych.git/
Already up-to-date.
git pull /home/user/github/jezyki-symboliczne
warning: redirecting to https://github.com/jezyki-symboliczne.git/
Already up-to-date.
git pull /home/user/github/mini-projekty
Already up-to-date.
git pull /home/user/github/systemy-wbudowane
warning: redirecting to https://github.com/systemy-wbudowane.git/
Already up-to-date.
```
