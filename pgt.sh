#!/data/data/com.termux/files/usr/bin/bash
#simlpe password generator for Termux
#Author : Prince kumar
#Date : 28 Nov 2020
#Modified on 3 dec 2020
			
#Start
# Make a banner first
					
clear
#Try to make random
ran=$((RANDOM%9))
#making different color banner
ran1=$((RANDOM%9))
   					
banner(){
echo -e "\e[3${ran};1m
 
██████╗  ██████╗████████╗
██╔══██╗██╔════╝╚══██╔══╝
██████╔╝██║  ███╗  ██║   
██╔═══╝ ██║   ██║  ██║   
██║     ╚██████╔╝  ██║      
╚═╝      ╚═════╝   ╚═╝\e[3${ran1};1mMADE BY PRINCE
\e[0m Password generator for termux\e[32;1m V1.1
"

}
banner
									
#make a menu options here
echo -e "\e[31m(\e[34m1\e[31m) \e[33;1m Normal mode"
echo -e "\e[31m(\e[34m2\e[31m) \e[33;1m Moderate mode"
echo -e "\e[31m(\e[34m3\e[31m) \e[33;1m Advance mode "
read m_optn	       
if [ $m_optn -eq 1 ]; then
	echo -e "\e[95m Starting normal mode."
	cd .pweb
	bash pgtn.sh
elif [ $m_optn -eq 2 ]; then
	cd .pweb            				
	bash pgtm.sh
	echo -e "\e[37m Want to run Normal mode..[Y]/[N]"
	read yn #reading for user choise
	if [ $yn = Y ] || [ $yn = y ];then
		echo -e "\e[32;1m Trying to start narmal mode"
		bash pgtn.sh
	elif [ $yn = N ] || [ $yn = n ];then
		
		echo -e "\e[32;1m Exiting program.."
	else
		echo -e "\e[32;1m Invalid option."
	fi	      
elif [ $m_optn -eq 3 ];then
	echo -e "\e[95m Starting advance mode."
	cd .pweb
	bash pgta.sh   			
	echo -e "\e[37m Want to run Normal mode..[Y]/[N] "
read yn #reading for user choise                        
if [ $yn = Y ] || [ $yn = y ];then
                echo -e "\e[32;1m Trying to start narmal mode "
                bash pgtn.sh
        elif [ $yn = N ] || [ $yn = n ];then

                echo -e "\e[32;1m Exiting program.."
        else
                echo -e "\e[32;1m Invalid option."
        fi
else
	echo "this optinon is not available"
fi
																															
																								                            
#don't copy this script..
					
									
