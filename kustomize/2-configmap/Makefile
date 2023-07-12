apply:
	kubectl apply -k ./staging

delete:
	kubectl delete -k ./staging

get-pod:
	kubectl get po -owide | grep nginx-deployment

get-cm: 
	kubectl get cm -owide | grep 'credentials\|config-'
