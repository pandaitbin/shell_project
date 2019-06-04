var1="Hello World"
len1=${#var1}
echo $len1
len2=`expr length "$var1"`
echo $len2

echo -e "---------- ---------- ---------- ---------- ----------"
var2="quickstart is a app"
ind1=`expr index "$var2" start`
echo $ind1

ind2=`expr index "$var2" app`
echo $ind2

ind3=`expr match "$var2" quick`
echo $ind3

ind4=`expr match "$var2" app`
echo $ind4
