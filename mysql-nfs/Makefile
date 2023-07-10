### Makefile --- 

## Author: 
## Version: $Id: Makefile,
## Keywords: 
## X-URL: 
## description: 

# apply: 
# 	helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner -f ./helm/nfs.yml -nnfs-provisioner

# delete: 
# 	helm uninstall nfs-subdir-external-provisioner

# 本次部署，使用的 kustomize 方式
apply-kustomiz:
	kubectl apply -k ./mysql-nfs-kustomiz/

delete-kustomiz:
	kubectl delete -k ./mysql-nfs-kustomiz/

apply-mysql:
	kubectl apply -f mysql.yml -nseeds-uat 

delete-mysql:
	kubectl delete -f mysql.yml -nseeds-uat 