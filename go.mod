module github.com/mayadata-io/chaos-ci-lib

go 1.14

require (
	cloud.google.com/go v0.54.0 // indirect
	github.com/emicklei/go-restful v2.12.0+incompatible // indirect
	github.com/go-openapi/jsonreference v0.19.3 // indirect
	github.com/go-openapi/spec v0.19.4 // indirect
	github.com/go-openapi/swag v0.19.8 // indirect
	github.com/imdario/mergo v0.3.8 // indirect
	github.com/litmuschaos/chaos-operator v0.0.0-20200310090048-610d15206c2f
	github.com/mailru/easyjson v0.7.1 // indirect
	github.com/onsi/ginkgo v1.13.0
	github.com/onsi/gomega v1.10.1
	github.com/pkg/errors v0.9.1
	k8s.io/api v0.20.0-alpha.2
	k8s.io/apimachinery v0.20.0-alpha.2
	k8s.io/client-go v0.20.0-alpha.2
	k8s.io/klog v1.0.0
	sigs.k8s.io/controller-runtime v0.3.0 // indirect
)

replace gopkg.in/fsnotify.v1 v1.4.8 => github.com/fsnotify/fsnotify v1.4.8
