package main

import (
        "fmt"
//      "os/exec"
//      "testing"
//      "time"
        "os"

        //. "github.com/onsi/ginkgo"
        //. "github.com/onsi/gomega"
        appv1 "k8s.io/api/apps/v1"
        v1 "k8s.io/api/core/v1"
        metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
        "k8s.io/client-go/kubernetes"
//      scheme "k8s.io/client-go/kubernetes/scheme"
        _ "k8s.io/client-go/plugin/pkg/client/auth/gcp"
        "k8s.io/client-go/tools/clientcmd"

//      restclient "k8s.io/client-go/rest"
//      "github.com/litmuschaos/chaos-operator/pkg/apis/litmuschaos/v1alpha1"
//      chaosClient "github.com/litmuschaos/chaos-operator/pkg/client/clientset/versioned/typed/litmuschaos/v1alpha1"
)

func nginxDeploymentPod() {
        kubeconfig := os.Getenv("HOME") + "/.kube/config"
        config, _ := clientcmd.BuildConfigFromFlags("", kubeconfig)
        client, _ := kubernetes.NewForConfig(config)

                //creating nginx deployment
                deployment := &appv1.Deployment{
                        ObjectMeta: metav1.ObjectMeta{
                                Name:      "nginx",
                                Namespace: "litmus",
                                Labels: map[string]string{
                                        "app": "nginx",
                                },
                                Annotations: map[string]string{
                                        "litmuschaos.io/chaos": "true",
                                },
                        },
                        Spec: appv1.DeploymentSpec{
                                Replicas: func(i int32) *int32 { return &i }(int32(3)),
                                Selector: &metav1.LabelSelector{
                                        MatchLabels: map[string]string{
                                                "app": "nginx",
                                        },
                                },
                                Template: v1.PodTemplateSpec{
                                        ObjectMeta: metav1.ObjectMeta{
                                                Labels: map[string]string{
                                                        "app": "nginx",
                                                },
                                        },
                                        Spec: v1.PodSpec{
                                                ServiceAccountName: "litmus",
                                                Containers: []v1.Container{
                                                        {
                                                                Name:  "nginx",
                                                                Image: "nginx:latest",
                                                                Ports: []v1.ContainerPort{
                                                                        {

                                                                                ContainerPort: 80,
                                                                        },
                                                                },
                                                        },
                                                },
                                        },
                                },
                        },
                }

                _, err := client.AppsV1().Deployments("litmus").Create(deployment)
                if err != nil {
                        fmt.Println("Deployment is not created and error is ", err)
                }

        }
func main() {
        nginxDeploymentPod()
}
