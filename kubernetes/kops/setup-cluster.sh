kops create cluster --zones=ap-southeast-1a ap1.kub.tripspace.co
kops update cluster --name ap1.kub.tripspace.co --yes

kops validate cluster

kops edit ig --name= nodes
master-ap-southeast-1a

kops create cluster --zones ap-south-1a,ap-south-1b --topology private --networking calico --master-size t2.micro --master-count 3 --node-size t2.large ${NAME}

http://www.studytrails.com/devops/kubernetes/install-kubernetes-on-aws-using-kops/
https://kubernetes.io/docs/setup/production-environment/tools/kops/

DNS
https://check-host.net/check-dns?host=api.ap1.kub.tripspace.co


k get nodes --output=wide

kubectl expose deployment deploy-1 --type=LoadBalancer -n=my-service