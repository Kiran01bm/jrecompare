#! /bin/bash

echo "Default is 10,000 Requests fired at 10 concurrency level and max wait of 1 sec per response and sleep for 60 secs in between tests"

i="0"

while [ $i -lt 9 ]
do

# 60 secs of sleep on the 1st run too to provide an opportunity to clean-up or terminate any runtimes on the system before the test begins.
sleep 10s

val=$(( 24000 + i ))
echo "Connecting to http://localhost:$val/greeting"
ab -n 10000 -c 10 -s 2 http://localhost:$val/greeting
i=$[$i+1]

done

echo "Test complete!!!"
