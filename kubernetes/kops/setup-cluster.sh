kops create cluster --zones=ap-southeast-1a ap1.kub.tripspace.co
kops update cluster --name ap1.kub.tripspace.co --yes

kops validate cluster

kops edit ig --name= nodes
master-ap-southeast-1a

kops create cluster --zones ap-south-1a,ap-south-1b --topology private --networking calico --master-size t2.micro --master-count 3 --node-size t2.large ${NAME}

http://www.studytrails.com/devops/kubernetes/install-kubernetes-on-aws-using-kops/
https://kubernetes.io/docs/setup/production-environment/tools/kops/

DNS
https://check-host.net/check-dns?host=api.apsoutheast.kub.trips2thailand.com


k get nodes --output=wide

kubectl expose deployment deploy-1 --type=LoadBalancer -n=my-service


// route53
ID=$(uuidgen) && aws route53 create-hosted-zone --name kub.trips2thailand.com --caller-reference $ID | jq .DelegationSet.NameServers
aws route53 list-hosted-zones | jq '.HostedZones[] | select(.Name=="trips2thailand.com.") | .Id'
aws route53 change-resource-record-sets --hosted-zone-id /hostedzone/Z3LBIFLO5YT25R --change-batch file://kub.dns.json

Suggestions:
 * validate cluster: kops validate cluster
 * list nodes: kubectl get nodes --show-labels
 * ssh to the master: ssh -i ~/.ssh/id_rsa admin@api.apsoutheast.kub.trips2thailand.com
 * the admin user is specific to Debian. If not using Debian please use the appropriate user based on your OS.
 * read about installing addons at: https://github.com/kubernetes/kops/blob/master/docs/addons.md.