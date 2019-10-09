#!/bin/bash

#01-a
echo -n "No of Processes which are running or ready in the system: "
echo `ps -eo stat | grep R | wc -l`

#01-b
echo -n "No of ForeGround processes in the system: "
echo `ps -eo stat | grep R+ | wc -l`

#01-c
echo "All Processes whose parent is init"
ps -f --ppid 1 -eo pid,ppid,cmd,stat
echo
echo -n "No of processes whose parent is init: "
echo `ps -f --ppid 1 -eo pid,ppid,cmd,stat | wc -l`

