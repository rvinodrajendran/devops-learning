This file is created to update the steps and commands involved in installing apache in Linux VM

sudo apt install apache2

since apache and nginx works on same port 80, only nginx page was loading

later nginx port was disabled for port 80 and then it was configured to port 81

port 80 was assigned to apache server on port 80 and the same was working in 192.168.0.135 in localhost

as nginx was originally loaded in browser, cache did not support apache webpage

after sometime, it loaded with apache webpage in localhost port 80 192.168.0.135
