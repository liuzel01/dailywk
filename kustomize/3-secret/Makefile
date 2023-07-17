NAMESPACE ?= production
# apply: 
# 	kustomize build ./${NAMESPACE} | \
# 		kubectl apply --namespace=${NAMESPACE} -f -

build: 
	kustomize build ./production/

apply:
	kubectl apply -k ./production/

delete:
	kubectl delete -k ./production/

# delete: 
# 	kustomize build ./${NAMESPACE} | \
# 		kubectl delete --namespace=${NAMESPACE} -f -

get-pod:
	kubectl get po -owide -nproduction | grep nginx-deployment

get-secret: 
	kubectl get secret -nproduction

build-stg: 
	kustomize build ./base/

apply-stg: 
	kustomize apply -k ./base/

delete-stg:
	kustomize delete -k ./base/

get-pod-stg: 
	kubectl get po -owide | grep nginx-deployment

# get-cm: 
# 	kubectl get cm -owide | grep 'credentials\|config-'
