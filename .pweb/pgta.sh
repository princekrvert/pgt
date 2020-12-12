#!/data/data/com.termux/files/usr/bin/bash
#@Author prince kumar
# Date 9 dec 2020
# Start coding here
echo -ne "\e[33;1m[\e[34m+\e[33m]\e[35m Enter first name: "
read f_name
echo " "   
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the start point: "
read s	
echo " "	
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the ending point: "
read e
echo " "
#generate password from first name
for i in `seq ${s} ${e}`;do
    echo ${f_name}${i} >> ${f_name}.txt
    echo ${i}${f_name} >> ${f_name}.txt

done		
echo -ne "\e[33;1m[\e[34m+\e[33m]\e[35m Enter last name: "
read l_name
echo " "
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the start: "
read s
echo " "
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the end point: "
read e 
echo " "
#generate password from last name
for i in `seq ${s} ${e}`;do
    echo ${l_name}${i} >> ${f_name}.txt
    echo ${i}${l_name} >> ${f_name}.txt                
done
     					

echo -ne "\e[33;1m[\e[34m+\e[33m]\e[35m Enter friend name: "
read bf_name #read friend name
echo " "		
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the start point: "
read s
echo " "
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the end point: "
read e
echo " "
#generate a password from friends name
	   
for i in `seq ${s} ${e}`;do
    echo ${bf_name}${i} >> ${f_name}.txt
    echo ${i}${bf_name} >> ${f_name}.txt
done	       
echo -ne "\e[33;1m[\e[34m+\e[33m]\e[35m Enter fav actor name: "
read f_actor #fav actor name
echo " "

echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the start point: "
read s		
echo " "
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the end point: "
read e
echo " "						

for i in `seq ${s} ${e}`;do             
                    echo ${f_actor}${i} >> ${f_name}.txt
                    echo ${i}${f_actor} >> ${f_name}.txt
done			    
										
echo -ne "\e[33;1m[\e[34m+\e[33m]\e[35m Enter date of birth: "
read db #reading date of birth
echo " "

echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the start point: "
										
read s
echo " "
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the end point: "	
read e
                                                echo " "

for i in `seq ${s} ${e}`;do
                    echo ${db}${i} >> ${f_name}.txt
                    echo ${i}${db} >> ${f_name}.txt
done				       			
echo -ne "\e[33;1m[\e[34m+\e[33m]\e[35m Enter special word/digit about victim: "
read sp 
echo " "

echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the start point: "
                                              			
read s
echo " "
echo -ne "\e[37;1m(\e[38m+\e[37m)\e[31m Enter the end point: "
read e
                                                echo " "

for i in `seq ${s} ${e}`;do
                    echo ${sp}${i} >> ${f_name}.txt
                    echo ${i}${sp} >> ${f_name}.txt
done								        	 	
mv ${f_name}.txt ..		             
echo -e "\e[33;1m[\e[35m+\e[33m]\e[36m Your password saved into ${f_name}.txt "
