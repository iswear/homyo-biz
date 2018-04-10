#!/bin/bash
echo "first create the ssh"
ssh-keygen -t rsa
echo "second copy file to target host"
read -p "please input the target host" host
read -p "please input the target user" user
read -p "please input the pub file" pubFile
scp $pubFile > "${user}@${host}:/" 
ssh "${user}@${host}" ""