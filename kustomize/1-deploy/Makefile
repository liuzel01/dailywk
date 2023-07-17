build: 
	kustomize build overlays/production

apply:
	kubectl apply -k ./overlays/production/

delete:
	kubectl delete -k ./overlays/production/

get:
	kubectl get po -owide -nproduction

build-stg: 
	kustomize build overlays/staging

apply-stg: 
	kubectl apply -k ./overlays/staging/

delete-stg: 
	kubectl delete -k ./overlays/staging/

get-stg: 
	kubectl get po -owide -ndefault