build: 
	kustomize build environments/production

apply:
	kubectl apply -k ./environments/production/

delete:
	kubectl delete -k ./environments/production/

get:
	kubectl get po -owide -nproduction

build-stg: 
	kustomize build environments/staging

apply-stg: 
	kubectl apply -k ./environments/staging/

delete-stg: 
	kubectl delete -k ./environments/staging/

get-stg: 
	kubectl get po -owide -ndefault