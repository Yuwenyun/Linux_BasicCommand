## xargs is used to construct args table
## basic usage: command1 | xargs [-option] command2 initial-args
## by default, command2 is echo, delimiter is blank space

# print content of owen.txt and pass three args to command2
# below command equals: cat owen.txt | xargs -n3 echo
cat owen.txt | xargs -n3

# print context of owen.txt and spplit the line with 's'
cat owen.txt | xargs -ds

# use {} as replace string for command2
# below command is going to copy every txt file to dir /opt/yuwenyun
find . -name '*.txt' | xargs -I {} cp {} /opt/yuwenyun

# pass to lines to command2
ls -l | xargs -L 2

# print every command2 constructed with params passed by xargs and then execute every command2
ls -l | xargs -t -L 2

# by default, command2 will execute when params passed by xargs is null,
# use -r to avoid the execution of command2
ls -l | grep storm | xargs -r -I {} cp {} /opt/yuwenyun