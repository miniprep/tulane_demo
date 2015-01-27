# This script performs cleaning operations on country files with errors


cd data/clean
# move into clean direction


# Fix Guinea file- we just want the middle 12 rows
echo "Fixing Guinea.cc.txt file"
head -n 24 Guinea.cc.txt | tail -n 12 > Guinea.cc.txt.clean
## this in an intermediate file first (do not overwrite original)
mv -v Guinea.cc.txt.clean Guinea.cc.txt
## this is the second step, moves corrected data to original file 
## verbosely


# Fix China file- we just want the top 12 rows
echo "Fixing China.cc.txt file"
head -n 12 China.cc.txt > China.cc.txt.clean'
mv -v China.cc.txt.clean China.cc.txt


# Fix Niger file- we just want the top 12 rows
echo "Fixing Niger.cc.txt file"
head -n 12 Niger.cc.txt > Niger.cc.txt.clean
mv -v Niger.cc.txt.clean Niger.cc.txt

cd ../..
# goes back to main folder

sleep 1
