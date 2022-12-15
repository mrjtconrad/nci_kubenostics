echo "-----------------------------------------------------" >diagnostics.txt
echo "" >>diagnostics.txt
echo "Cluster Nodes " >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl get nodes >> diagnostics.txt
kubectl describe nodes -A >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Cluster Pods " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl get pods -A -o wide >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Cluster Services " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl get svc -A >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Installation Details " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl get installation -o yaml >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Tigera Status " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl get tigerastatus >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Cluster Info " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl cluster-info >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Kubernetes Network Policy " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl get networkpolicy -A >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Calico Network Policy " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

calicoctl get networkpolicy --all-namespaces -o wide >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Global Network Policy " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

calicoctl get globalnetworkpolicy -o wide >> diagnostics.txt

echo "" >>diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt
echo "Licence Information " >> diagnostics.txt
echo "-----------------------------------------------------" >>diagnostics.txt
echo "" >>diagnostics.txt

kubectl get licensekeys.projectcalico.org >> diagnostics.txt
kubectl get licensekeys.projectcalico.org -o yaml | grep expiry >> diagnostics.txt

