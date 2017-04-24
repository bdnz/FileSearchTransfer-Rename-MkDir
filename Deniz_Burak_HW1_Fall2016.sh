#!/bin/bash - 
#===============================================================================
#
#          FILE: Deniz_Burak_HW1_Fall2016.sh
# 
#         USAGE: ./Deniz_Burak_HW1_Fall2016.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Burak Deniz (), burakdeniz@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 09/15/2016 19:40
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
#!/bin/bash
#!/bin/sh
#!/usr/bin/env bash
if [ $1  = "--help" ]; then
echo
echo " This is a HELP FUNCTION "
echo
echo " -w Print name three times "
echo
echo " With no arguments it provides a menu to test the system "

else

	echo 
	echo "This Script Can Do Three Things:"
	echo "1. Check To See If The User Is The Root"
	echo "2. Check To See If The Script Is Running On Linux"
	echo "3. Check To See If The -w Argument Is Given"
	echo	
	echo "What Would You Like to Do? (Press 1,2,or 3)"

	read input
	
	#if [ input$ = "1" ]; then
	
 	if [ $input = "1" ]; then
 
 	CheckRoot="id -u";
 
  		case  $CheckRoot  in
 			0)
			echo
 			echo " *You are the ROOT USER...*" ;;
			
  			*)
			echo
  			echo " *You are NOT the ROOT USER...* ";;
 		
		 esac

		elif [ $input = "2" ]; then

		OperatingSystem=$(uname -s);
		if  [ "$OperatingSystem" = "Linux" ]; then
		echo " ..*The Script is Runing On LINUX..* "
		elif [ "$OperatingSystem" = "Win32" ]; then
		echo " ..*The script is Runing on Windowns..* "
		elif [ "$OperatingSystem" = "MINGW32_NT"]; then
		echo " ..*The Script is Runing on Windowns..*  "
		else
		echo "I don't know what the hell is your OS"
		fi

	
	elif [ $input = "3" ]; then

		case $1 in


			"-W")
			echo $2 $2 $2;;


			"-w")

			echo $2 $2 $2;;
		
			
			*)
			echo
			echo " EROR! ->   -w Input Example: '-w Hugo' will print Hugo Hugo Hugo "
		esac 	

	
#	elif [ "$1" = "--help" ]; then
		

#		echo " --help Print this help message"
#		echo
#		echo " To print name three times '-w name' OR '-W name' "

#		echo		

#		echo " With no arguments it provides a menu to test the system  "



 
 	fi


fi	

	
