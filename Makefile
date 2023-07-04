### Makefile --- 

## Author: 
## Version: $Id: Makefile,
## Keywords: 
## X-URL: 
## description: 新增 Makefile，简化编译过程

REMOTE_REPO=hub.base.domain/myapp

# all: clean_images build_v1 build_v2 push_v1 push_v2

# build_v1:
# 	docker build -f Dockerfile-v1 -t $(REMOTE_REPO):v1 --squash .
#uild_v2:
# 	docker build -f Dockerfile-v2 -t $(REMOTE_REPO):v2 --squash .
# push_v1:
# 	docker push $(REMOTE_REPO):v1
# push_v2:
# 	docker push $(REMOTE_REPO):v2
# clean_images:
# 	- docker rmi $(REMOTE_REPO):v1
# 	- docker rmi $(REMOTE_REPO):v2

seeds-java: seeds-config seeds-uc seeds-gateway seeds-admin seeds-game 

seeds-admin:
	kubectl apply -f seeds-java/seeds-admin.yml -nseeds-uat
seeds-config: 
	kubectl apply -f seeds-java/seeds-config.yml -nseeds-uat
seeds-gateway: 
	kubectl apply -f seeds-java/seeds-gateway.yml -nseeds-uat
seeds-game: 
	kubectl apply -f seeds-java/seeds-game.yml -nseeds-uat
seeds-uc: 
	kubectl apply -f seeds-java/seeds-uc.yml -nseeds-uat

jenkins: 
	docker-compose -f ./jenkins/docker-compose.yml up -d 