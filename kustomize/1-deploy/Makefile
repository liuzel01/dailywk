apply:
	kubectl apply -k ./environments/production/

delete:
	kubectl delete -k ./environments/production/

get:
	kubectl get po -owide -nproduction

apply-staging: 
	kubectl apply -k ./environments/staging/

delete-staging: 
	kubectl delete -k ./environments/staging/

get-staging: 
	kubectl get po -owide -ndefault