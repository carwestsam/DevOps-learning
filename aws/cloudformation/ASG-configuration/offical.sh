aws cloudformation create-stack --stack-name asg-lc-$((RANDOM)) --template-body file://$(pwd)/offical2.json --region us-east-1 --profile carwestsam-admin
