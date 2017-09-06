
set -xe

EXIST=$(ls . | grep fesafesafesa)

if [ -z "$EXIST" ]; then
    echo "yes"
else 
    echo "No"
fi
