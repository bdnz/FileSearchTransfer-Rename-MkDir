#!/bin/bash - 
#===============================================================================
#
#          FILE: Deniz_Burak_HW3.sh
# 
#         USAGE: ./Deniz_Burak_HW3.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Burak Deniz (), burakdeniz@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 12/05/2016 01:15
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

#set -o nounset                              # Treat unset variables as an error
mm=`date +%m`
ts="."`date +%Y-%m-%d`
if [[ $1 == "" || $1 == "--help" ]]
then
        echo "Usage: hw2.sh [-c customerDataFolder] [-f dataFile]"
        echo "Both arugments are required"
else
while getopts ":c:f:" opt
do
        case $opt in
                c)cfolder=$OPTARG
                        ;;
                f)ffile=$OPTARG
                        ;;
                \?) echo "Usage: hw2.sh [-c customerDataFolder] [-f dataFile]"
                        echo "Both arugments are required"
                        exit 1
                        ;;
        esac
done
echo "working on /home/student"
echo "Checking for data structure"
newscript=$ffile$ts
if [[ -e /home/student/$cfolder/$mm ]]
then
        echo "Getting file from customer server"
else
        echo "Customer $cfolder folder is missing"
        echo "Creating folder"
        echo "Getting file from customer server"
        mkdir /home/student/$cfolder/$mm
fi

scp bd81217@icarus.cs.weber.edu:/home/hvalle/submit/cs3030/files/$ffile /home/student/$cfolder/$mm/$newscript
echo "File located at [$cfolder/$mm/$newscript]"
fi
exit 0
