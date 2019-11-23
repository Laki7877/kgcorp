kubectl delete secret secret-1 -n poc
kubectl create secret generic secret-1 --from-literal=SECRET_DATA_1=Sik --from-literal=SECRET_DATA_2=sik@th.ibm.com -n poc