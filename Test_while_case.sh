#!/bin/bash
MYDATE=`date+%d/%m/%Y`
THIS_HOST=`hostname`
USER=`whoami`
while :
do
 clear
 cat<<EOF
 _______________________________________________________________
 User:$USER        Host:$THIS_HOST         DATE:$MYDATE
 _______________________________________________________________
                1:List files in currentdir
                2:Use the vi editor
                3:See who is on thesystem
                H:Help sreen
                Q:Exit Menu
 _______________________________________________________________
EOF
 echo -e -n "\tYour Choice [1,2,3,H,Q]>"
 read CHOICE
   case $CHOICE in
   1) ls
     ;;
   2) vi
     ;;
   3) who
     ;;
   H|h)
     cat<<EOF
     This is the help screen,nothing here yet to help you!
EOF
     ;;
   Q|q) exit 0
     ;;
   *) echo -e "\t\007unknown user response"
     ;;
   esac
 echo -e -n "\tHit the return key to continue"
 read DUMMY
done