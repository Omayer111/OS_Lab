for var in {1..5}
do
	mkdir $var
done

var=6
while ((var <= 10))
do
	touch $var
	var=$((var+1))
done

#removes all
ls_array=($(ls))
for name in ${ls_array[@]}
do
	then
		rm -r $name
	fi
done


ls_array=($(ls))
for name in ${ls_array[@]}
do
	if [[ ! $name =~ \.sh$ ]]
	then
		rm -r $name
	fi
done


echo "enter a number for the multi table: "
read n
i=1

while ((i<=10))
do
	echo "$n * $i = $((n*i))"
	i=$((i+1))
done

#can't use -ne -gt in strig op only != and things like that

#delete w/o the current script

current_script=$(basename $0)
files=($(ls))
for f in ${files[@]}
do
	if [[ $f != $current_script ]]
	then
		rm -r $f
	fi
done


: '
read grade
case $grade in
	100)
	echo "perfect score"
	;;
	90)
	echo "good"
	;;
	80)
	echo "okay"
	;;
	*)
	echo "try again"
	;;
esac 

#file operation

name="for.txt"
for i in $(cat $name)
do
	echo $i
done

#word/char count -w/-c/-l longest line length

numbr=$(wc -L < for.txt)
echo $numbr

#longest line size count

name=$(cat for.txt)
count=0
res=0
for ((i=0;i<${#name};i++))
do
	if [[ ${name:$i:1} = $'\n' ]]
	then
		if [[ $count > $res ]]
		then
			res=$count
			
		fi
		count=0
	else
		count=$((count+1))
	fi
done
echo $res

name=($(ls))
echo ${#name[@]}

read n
read m
declare -A arr
for ((i=0;i<n;i++))
do
	for ((j=0;j<m;j++))
	do
		read a
		arr[$i,$j]=$a
	done
done

for ((i=0;i<n;i++))
do
	for ((j=0;j<m;j++))
	do
		echo -n ${arr[$i,$j]}
	done
done


a="abcdefgh"
for ((i=0;i<${#a}-2;i+=1))
do
	if [[ ${a:$i:3} == "def" ]]
	then
		echo "found"
	fi
done

a=(1 2 3 4 5)
res=0
for ((i=0;i<${#a[@]};i++))
do
	res=$((res+a[$i]))
done

echo $res

function largest(){
	array=("$@") ####
	big=${array[0]}
	for ((i=0;i<${#array[@]};i++))
	do
		if [[ ${array[$i]} > $big ]]
		then
			big=${array[$i]}
		fi
	done
	echo $big

}

read n
declare -A arr

for ((i=0;i<n;i++))
do
	read a
	arr[$i]=$a
done
ans=$(largest ${arr[@]}) ###

echo $ans



function dup(){
	val=$1
	for ((i=0;i<${#val};i++))
	do
		for ((j=i+1;j<${#val};j++))
		do
			if [[ ${val:$j:1} == ${val:$i:1} ]]
			then
				echo "dup found"
				return
			fi
		done
	done
	
	echo "no dup"
}

dup "hell"
dup "hel"


one=1
two=10

until (( one > two ))
do
	echo $one
	((one++))
done

while read f
do
	echo -n $f
done < for.txt


while IFS=',' read one two three
do
	if [[ $one =~ [A-Za-z]+ && $two =~ [A-Za-z]+ && $three =~ [A-Za-z]+ ]]
	then
		continue
	else
		echo "$one-$two-$three"
	fi
done < test.csv

echo $1
shift
if [[ $1 == "" ]]
then
	echo "nehi hae"
else
	echo $1
fi

read -p "type the site name: " site
ping -c 1 $site &> /dev/null
if [[ $? == 0 ]]
then
	echo "successful"
else
	echo "not succ"
fi

str="site: www.google.com"
if [[ $str =~ (www.[a-z]+\.com$) ]]
then
	echo "site is: ${BASH_REMATCH[1]}"
fi

total=($(ls))
for i in ${total[@]}
do
	if [[ -f $i ]]
	then
		echo "$i " >> file.txt
	elif [[ -d $i ]]
	then
		echo "$i " >> folder.txt
	else
		continue
	fi
done
'
site="www.youtube.com"
ping -c 1 $site &> /dev/null


: ' 
a=1.2
b=1
result=$(echo "scale=3; $a / $b" | bc)
new=$(echo "scale=3; sqrt(24)" | bc)
echo $result
echo $new

#for line printing
grep -E -n -v "[0-9,]*[a-z]+" test.csv for.txt
grep -c -i "There" for.txt
ls -l | grep 'shell2.sh$'



x='helo'
echo $x
export x
bash
echo $x
exit
echo $x

a="hello"
b="aloha $a"
echo ${b%hello*}
if [[ -z $a ]] 
then 
	echo  zero
fi


unset name
echo ${name-'amy'}
unset a
val= ${a?'a is unset'}
echo $val
'


: ' 


Suites="Clubs Diamonds Hearts Spades"
Denominations="2 3 4 5 6 7 8 9 10 Jack Queen King Ace"

suite=($Suites)
denom=($Denominations)

n1=${#suite[@]}
n2=${#denom[@]}

echo ${suite[$((RANDOM%n1))]}
echo ${denom[$((RANDOM%n2))]}

for file in *
do
	echo $file
done


for file in *
do
	f=$(basename $file)
	n=$(echo $f | tr A-Z a-z)
	if [[ $f != $n ]]
	then
		mv $f $n
		echo done
	fi
done



cmp $1 $2 &> /dev/null
if [[ $? == 0 ]] 
then
	echo same
else
	echo not same
fi
'

echo "scale=3; 40 * 10 / 2.533" | bc

