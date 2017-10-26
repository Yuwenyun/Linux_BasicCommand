## netstat is used to check socket related information

# list all the connection
netstat -a

# list all the tcp connection
netstat -at

# list all the udp connection
netstat -au

# list all the sockets whose state are listen
netstat -al

# show the statistics of different types of connection
netstat -s

# show the socket-related pid and process name
netstat -pt

# use nslookup to get the namespace
$ nslookup
> www.baidu.com
Server:		192.168.1.1      #DNS server
Address:	192.168.1.1#53   #DNS server IP and port

Non-authoritative answer:    #read from cash
Name:	www.baidu.com        #nameapce
Address: 115.239.210.27      #IP
Name:	www.baidu.com        #namespace
Address: 115.239.211.112     #another IP
> exit
