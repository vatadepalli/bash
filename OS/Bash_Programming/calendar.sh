#!/bin/bash

echo "Here is calender for next year:"
cal -m `date +%m`f
echo
echo "And for previous year:"
cal -m `date +%m`p
