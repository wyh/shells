if [ -z $2 ]
then
    port=8964;
else
    port=$2
fi
    

if [ -z $1 ]; then 
    domain=beeblio@overwall.shanbay.com
elif [ $1 ==  shanbay ]; then
    domain=beeblio@overwall.shanbay.com

elif [ $1 == xiaobo ]; 
then
    domain=beeblio@xiaobo;
elif [ $1 == rizi ]; 
then
    domain=samuel@rizi.me
fi

echo $domain $port

kill `ps -ef |grep "ssh -fCqND"|grep $port |awk '{print $2}'|head -1`

ssh -fCqND $port  $domain

if  [ $? -eq 0 ]; then 
    echo "successfully connected!"
fi 
