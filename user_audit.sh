#!/bin/bash
touch user_report.log
usersfile="users.txt"
while read -r user; do
if grep -q "$user:" /etc/passwd; then
echo "$EXISTS exists" >>user_report.log
lastlog -u "$user" >> user_report.log
else
echo "$EXISTS does not exist" >>user_report.log
fi
done < "$usersfile"
<<<<<<< HEAD
read var
=======

>>>>>>> 2986b42 (Add user_audit.sh to main for merge conflict simulation)
   
