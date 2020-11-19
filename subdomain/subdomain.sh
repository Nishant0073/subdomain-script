#!/bin/bash
echo "Created by Nishant_0073

"
echo "Enter website url: "
read siteurl

wget $siteurl

echo "Enter the  website domain  name: "
echo 'eg.: www."google".com'
read site

echo "Enter the website domain extansion: "
echo 'eg.: www.google."com"'

read ext

grep -o "[^/]*\.$site\.$ext" index.html | sort -u > subdomains.txt
if [ -s subdomains.txt ]
then
	echo "Subdomains of $siteurl are saved in subdomains.txt file"
else
	echo "No subdomains found..!!"
fi
