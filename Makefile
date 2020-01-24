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
	@echo "-----------------------------"
	@echo "Installing Litmus and OpenEBS"
	@echo "-----------------------------"
#	@go test openebs_setup.go
