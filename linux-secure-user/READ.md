This is a file created to record the steps and configuration required to create secure user in linux

created a new linux user as devuser with below commands

sudo adduser devuser

ls -ld /home/devuser

then did password expiry in 3 days

sudo chage -M 3 devuser

sudo chage -l devuser

then disable root login via ssh

sudo nano /etc/ssh/sshd_config.d/99-disable-root.conf

added - PermitRoolLogin no

sudo systemctl restart ssh

verify SSH login as devuser

ssh devuser@localhost

exit

