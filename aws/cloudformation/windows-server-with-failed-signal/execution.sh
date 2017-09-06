aws cloudformation create-stack --stack-name simple-windows-server-$((RANDOM)) --template-body file://$(pwd)/template.json --region us-east-1 --profile carwestsam-admin

