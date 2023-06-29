!/bin/bash
POD_NAME=$(kubectl get pods --namespace "kube-system" -l "app=openvpn,release=openvpn" -o jsonpath='{ .items[0].metadata.name }')
SERVICE_NAME=$(kubectl get svc --namespace "kube-system" -l "app=openvpn,release=openvpn" -o jsonpath='{ .items[0].metadata.name }')
SERVICE_IP=34.84.129.210
KEY_NAME=$1
kubectl --namespace "kube-system" exec -it "$POD_NAME" /etc/openvpn/setup/newClientCert.sh "$KEY_NAME" "$SERVICE_IP"
kubectl --namespace "kube-system" exec -it "$POD_NAME" cat "/etc/openvpn/certs/pki/$KEY_NAME.ovpn" >"$KEY_NAME.ovpn"
sed -i 's/remote 34.84.129.210 443 tcp/remote 34.84.129.210 1194 tcp/' $KEY_NAME.ovpn
sed -i '/^redirect-gateway def1/d' $KEY_NAME.ovpn

生成一个key abcd：
bash open.sh abcd

回收key：
#!/bin/bash
KEY_NAME=$1
POD_NAME=$(kubectl get pods -n "kube-system" -l "app=openvpn,release=openvpn" -o jsonpath='{.items[0].metadata.name}')
kubectl -n "kube-system" exec -it "$POD_NAME" /etc/openvpn/setup/revokeClientCert.sh $KEY_NAME

bash close.sh abcd
