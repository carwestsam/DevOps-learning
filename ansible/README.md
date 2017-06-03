## instructions

'''
sudo ansible --inventory-file=$(pwd)/hosts --private-key $(pwd)/secret.pem
--user=ec2-user all -m ping
'''
