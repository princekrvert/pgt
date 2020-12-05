#!/data/data/com.termux/files/usr/bin/bash
#simlpe password generator for Termux
#Author : Prince kumar
#Date : 28 Nov 2020
#Modified on 3 dec 2020
		                            
#Take all input here
#Define color
r="\e[31m"
g="\e[32m"
y="\e[33m"
m="\e[35m"
c="\e[36m"
               											                             			 							  
echo -ne "${r}[${g}+${r}]${c} Enter first name: "
read f_name
echo " "   
echo -ne "${r}[${g}+${r}]${c} Enter last name: "
read l_name
echo " "    
echo -ne "${c}[${m}+${c}]${r}Enter DOB (eg.ddmmyear): "
read dob
echo " "
echo -ne "${r}[${g}+${r}]${m} Fav actor name: "
read f_actor
echo " "
echo -ne "${r}[${g}+${r}]${c} If you want to add special word/number about victim add here: "
read sp_word
echo " "
echo -ne "${r}[${g}+${r}]${y}Best friend name: "
read b_friend
echo " "
echo -ne "${r}[${g}+${r}]${y}Enter nick name: "
read n_name
echo " "
full_name=$f_name$l_name

n_list=(${f_name} ${l_name} ${f_actor} ${b_friend} ${n_name} ${full_name});
								                              
#generete first list
			                                                                                                                                                                
firstgen(){
	for i in "${n_list[@]}";do
		for n in {00..100};do
			echo ${i}${n} >> $f_name.txt
		done
	done
}
firstgen
#special word password generator
spgenerator(){
	for i in "${n_list[@]}";do
		echo "${n_list}${sp_word}" >> $f_name.txt
		echo "${sp_word}${n_list}" >> $f_name.txt
	done

}
spgenerator                     

                                                        
#some special password gen
specialgen(){
	echo "iloveyou${b_friend}" >> $f_name.txt
	echo "iloveyou${f_actor}" >> $f_name.txt
	echo "iloveyou" >> $f_name.txt
	echo "1234${f_name}" >> $f_name.txt
	echo "${f_name}1234" >> $f_name.txt
	echo "123456${f_name}" >> $f_name.txt
	echo "${f_name}123456" >> $f_name.txt
	echo "${f_actor}1234" >> $f_name.txt
	echo "1234${f_actor}" >> $f_name.txt
	echo "${f_actor}123456" >> $f_name.txt
	echo "123456${f_actor}" >> $f_name.txt
                  

}
specialgen
#year password 
#2000-2009
yearf(){
	for i in "${n_list[@]}";do
		for n in {0..9};do
			echo "${i}200${n}" >> $f_name.txt
			echo "200${n}${i}" >> $f_name.txt
		done
	done
}
yearf
                                                                      
#modern year
#2010-2020
yearm(){
	for i in "${n_list[@]}";do
		for n in {10..20};do
			echo "${i}20${n}" >> $f_name.txt
			echo "20${n}${i}" >> $f_name.txt
		done
	done

}
yearm                   
#make a name list
nd_list=(${f_name} ${l_name} ${full_name});
#Date of birth list
ndlist(){
	for i in "${nd_list[@]}";do
		echo "${i}${dob}" >> $f_name.txt
		echo "${dob}${i}" >> $f_name.txt
	done

}
ndlist
mv ${f_name}.txt ..
echo -e "${g}[${r}!${g}]${m} Password saved into $f_name.txt"
                      		                              
	
