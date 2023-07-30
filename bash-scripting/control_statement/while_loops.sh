#!/user/bin/env bash

# A while loop is somewhat similar to a for loop in the sense that it’s repeating a process, but a while
# loop has a condition or test, it only continue as long as the test is true

counter=1
limit=10

while [ $counter -le $limit ]
do
    echo "task $counter ongoing..."
    ((counter++))
done