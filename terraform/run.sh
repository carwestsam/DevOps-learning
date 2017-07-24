#docker build . -t terraform

## NEED
## secret_key
## access_key

docker run --rm --name terraform -e "secret_key=''" -e "access_key=''" --privileged=true -it -v $(pwd):/data terraform:latest
