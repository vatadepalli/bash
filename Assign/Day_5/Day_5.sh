#!/bin/bash

# 1. Run the firefox with highest priority.
firefox pid = 1906
nice -n 0 firefox
renice -n 0 -p 1906


# 2. Run the firefox with lowest priority.
nice -n 19 firefox


# 3. Change the running firefox process priority to 10
renice -n 10 -p 1906


# 4. Write a multithreaded program in C. Both thread should perform the increment operation on a
# variable by 1.
# // IN FILE

# 5. Write a program and do the following :using sigaction API, handle SIGINT, SIGTERM, SIGQUIT,
# SIGSTOP,SIGTSTP and SIGKILL. Install dummy handlers for the mentioned signals Using
# sigaction() system call API !!!
# //  IN FILE

# 6. Try to kill init process (with pid 1) from your command line(using kill command) or using kill()
# system call inside one of your processes.what is the result ? comment on the same.
kill -9 1
