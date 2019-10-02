#!/bin/bash

cd /etc/

ls

# The second column is the number of hard links to the file.
# For a directory, the number of hard links is the number of immediate subdirectories it has plus its parent directory and itself. 

ls -a # Also Shows Hidden files

ls -A # Almost all, but no . and ..

ls -lh # Shows sizes in human readable format

ls -F # shows directories with / at the end
ls -p

ls -r # displays in reverse order

ls -R # recursively list sub directories

ls -ltr # shows lartest modification file or directory date as last.

ls -lS # displays file size in order, will display big in size first.

ls -i # Shows inode numbers of the files / folders

ls --version

ls --help

ls -l /tmp # -ld parameters displays information of /tmp directory

ls -n # UID and GID of files an directories

alias ls="ls -l"

alias # Lists all the alias.

unalias ls # Remove previously defined alias

# LS TIME FORMATTING

ls --full-time

ls -l --time-style=[STYLE]  

: '
    full-iso
    long-iso
    iso
    locale
    +%H:%M:%S:%D
'
ls -l --time-style=full-iso


# LS GENERAL FORMATTING

ls --format=across
ls --format=comma
ls --format=horizontal
ls --format=long
ls --format=single-column
ls --format=verbose
ls --format=vertical


# SORTING BASED ON : EXTENSION, SIZE, TIME, VERSION

ls --sort=extension --single-column
ls --sort=size
ls --sort=time -l
ls --sort=version
ls --sort=none

# PRINT WIDER

ls --width 80
ls --width 100
ls --width 150
ls --tabsize=8