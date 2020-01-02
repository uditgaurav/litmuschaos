# Makefile for building litmus-e2e-pipeline

IS_DOCKER_INSTALLED = $(shell which docker >> /dev/null 2>&1; echo $$?)

# list only our namespaced dGirectories
PACKAGES = $(shell go list ./... | grep -v '/vendor/')

# docker info
DOCKER_REPO ?= litmuschaos
DOCKER_IMAGE ?= chaos-operator
DOCKER_TAG ?= latest

.PHONY: install
install: 
	@echo "-------------------"
	@echo "Installing Litmus"
	@echo "-------------------"
	@echo "Creatign crds"
	@kubectl create -f https://raw.githubusercontent.com/litmuschaos/chaos-operator/master/deploy/chaos_crds.yaml
	@echo "Creating rbac"
	@kubectl create -f https://raw.githubusercontent.com/litmuschaos/chaos-operator/master/deploy/rbac.yaml
	@echo "Creating chaos-operator"
	@kubectl create -f https://raw.githubusercontent.com/litmuschaos/chaos-operator/master/deploy/operator.yaml
	@echo "Litmus installed successfully"


.PHONY: deployapp
deployapp:

	@echo "--------------------"
	@echo "Deploying app"
	@echo "--------------------"
	@go run /test/deploy_app.go

.PHONY: liveness
liveness:

	@echo "-------------------"
	@echo "Checking liveness"
	@echo "-------------------"
	
.PHONY: pod-delete
pod-delete:

	@echo "------------------"
	@echo "Running Pod-delete Experiment"
	@echo "------------------"

.PHONY: app-cleanup
app-cleanup:

	@echo "--------------------"
	@echo "Deleting litmus"
	@echo "--------------------"
	@kubectl delete -f https://raw.githubusercontent.com/litmuschaos/chaos-operator/master/deploy/chaos_crds.yaml
	@kubectl delete -f https://raw.githubusercontent.com/litmuschaos/chaos-operator/master/deploy/rbac.yaml
	@kubectl delete -f https://raw.githubusercontent.com/litmuschaos/chaos-operator/master/deploy/operator.yaml
	@kubeclt delete deploy nginx -f litmus


