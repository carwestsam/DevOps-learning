## instructions

'''
sudo ansible --inventory-file=$(pwd)/hosts --private-key $(pwd)/secret.pem
--user=ec2-user all -m ping

sudo ansible --inventory-file=$(pwd)/hosts all -a "/bin/echo hello"

$ ansible aws -i ./hosts -m copy -a "src=$(pwd)/a.py dest=/home/ec2-user/a.py"

$ ansible aws -i ./hosts -a "/usr/bin/python /home/ec2-user/a.py"

$ ansible-playbook -i ./hosts ./vagrant_setup.yml -f 10

'''
