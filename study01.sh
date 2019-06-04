var1="Hello World"
len1=${#var1}
echo $len1
echo -e "---------- ----------"
len2=`expr length "$var1"`
echo $len2
