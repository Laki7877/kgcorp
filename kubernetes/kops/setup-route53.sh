ID=$(uuidgen) && aws route53 create-hosted-zone --name kub.tripspace.co --caller-reference $ID | jq .DelegationSet.NameServers

aws route53 list-hosted-zones | jq '.HostedZones[] | select(.Name=="tripspace.co.") | .Id'

aws route53 change-resource-record-sets --hosted-zone-id /hostedzone/Z2BFP1BXOJ18A7 --change-batch file://kub.dns.json