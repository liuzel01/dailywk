### Makefile --- 

## Author: 
## Version: $Id: Makefile,
## Keywords: 
## X-URL: 
## description: 

# seeds-java: seeds-config seeds-uc seeds-gateway seeds-admin seeds-game 

apply: 
	helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner -f nfs.yml -nnfs-provisioner

delete: 
	helm uninstall nfs-subdir-external-provisioner

apply-kustomiz:
	kubectl apply -k ./mysql-nfs-kustomiz/

delete-kustomiz:
	kubectl delete -k ./mysql-nfs-kustomiz/
