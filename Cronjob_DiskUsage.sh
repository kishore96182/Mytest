#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=1

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -s 'Disk Space Alert' manoj251995kumar@gmail.com << EOF
Your root partition space is critically low. Used: $CURRENT%


EOF
echo Disk Space Alert $CURRENT %
else 
echo no problem
fi
