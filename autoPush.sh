#!/bin/bash

while [ 5 -gt 4 ]
do
echo "Menu : "
echo -e "0) init git files"
echo -e "1) add files to git local"
echo -e "2) make commit"
echo -e "3) add remote origin"
echo -e "4) push to remote"
echo -e "5) pull remote"
echo -e "6) view remote link"
echo -e "69) custom input"
echo -n "Inputan : "
read userinput
if [ $userinput -eq 1 ]
then
git add
clear

elif [ $userinput -eq 0 ]
then 
git init 

elif [ $userinput -eq 2 ]
then
echo -n "Masukkan nama commit"
read new_commit
git commit -m $new_commit

elif [ $userinput -eq 3 ]
then
echo -n "Masukkan link URL :"
read link_url
git remote add origin $link_url

elif [ $userinput -eq 4 ]
then
git push origin main

elif [ $userinput -eq 5 ]
then
git pull origin main

elif [ $userinput -eq 6 ]
then
git remote get-url origin

elif [ $userinput -eq 69 ] 
then
echo -n "Masukkan user input : "
read custom_command
$custom_command
fi
done