#!/data/data/com.termux/files/usr/bin/bash
#password generator
#Author prince kumar
#date 4 dec 2020
#start
#take input here
echo -ne "\e[32m[\e[31m×\e[32m]\e[33;1mEnter first name: "
read f_name
echo " "      
echo -ne "\e[32m[\e[31m×\e[32m]\e[33;1mEnter last name: "
read l_name
echo " "   
echo -ne "\e[32m[\e[31m×\e[32m]\e[33;1mEnter date of birth eg(ddmmyy) "
read dob
echo " "       
echo -ne "\e[32m[\e[31m×\e[32m]\e[33;1mEnter fav actor name: "
read f_actor
echo " "     
echo -ne "\e[32m[\e[31m×\e[32m]\e[33;1mEnter best friend name: "
read b_friend
echo " "       
echo -ne "\e[32m[\e[31m×\e[32m]\e[33;1mEnter nick name: "
read n_name
echo " "
echo " "
echo -ne "\e[37m(\e[31m+\e[37m)\e[35mIf you want to add some werd/number\nadd here: "
read s_num
echo "  "
echo " "
echo -ne "\e[37m(\e[31m+\e[37m)\e[35m Enter the start: "
read s #reading start point
echo " "
			
echo -ne "\e[37m(\e[31m+\e[37m)\e[35m Enter the end: "
read e          #reading end point
									
#generate password here

n_list=($s_num $f_name $l_name $dob $f_actor $b_friend $n_name )
#generator function..
seq_gen(){ 

	for i in "${n_list[@]}";do
		for n in `seq ${s} ${e}`;do
			echo ${i}${n} >> $f_name.txt
		
		done
	done
	    								
 }
seq_gen
mv ${f_name}.txt ..

echo -e "\e[31m[\e[34m+\e[31m]\e[0;1m Password file saved into ${f_name}.txt"
