registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:v1.8.0

registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:v1.8.0


`minikube kubectl -- get pods --selector="app.kubernetes.io/
name=ingress-nginx" -n ingress-nginx`

minikube addons images ingress

kubectl describe pod ingress-nginx-controller-59b45fb494-2tcfb
```
minikube start --registry-mirror=https://registry.docker-cn.com 
--image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers

docker pull coredns/coredns:1.8.0

docker tag coredns/coredns:1.8.0 registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:v1.8.0

docker rmi coredns/coredns:1.8.0

minikube image load registry.cn-hangzhou.aliyuncs.com/
google_containers/coredns:v1.8.0

minikube start --image-repository='registry.cn-hangzhou.aliyuncs.com/google_containers’ --image-mirror-country='cn'
```

查找pod 对应的image

kubectl describe pod ingress-nginx-controller-59b45fb494-2tcfb -n ingress-nginx | grep image

Minikube - Kubernetes本地实验环境

https://developer.aliyun.com/article/221687


minikube addons enable ingress timeout
===
1. https://github.com/kubernetes/minikube/issues/8756

https://blog.51cto.com/8999a/2784605

https://jasonkayzk.github.io/2021/05/30/%E5%9B%BD%E5%86%85%E5%9C%A8minikube%E4%B8%AD%E6%B7%BB%E5%8A%A0ingress-nginx%E6%8F%92%E4%BB%B6/

https://segmentfault.com/a/1190000014116698

https://www.cnblogs.com/zox2011/archive/2013/05/28/3103824.html

https://blog.csdn.net/fly_leopard/article/details/108790217

https://www.cnblogs.com/zkwzkw/p/13509160.html

https://juejin.cn/post/6844904005492031502

https://www.cnblogs.com/hanshengli/p/13528193.html

https://kubernetes.io/zh/docs/tasks/access-application-cluster/ingress-minikube/

https://github.com/kubernetes/minikube/issues/9669

卸载
====
https://blog.csdn.net/zh554275855/article/details/115741012

https://blog.csdn.net/weixin_42214548/article/details/109151028

安装kubctl
====
https://kubernetes.io/zh/docs/tasks/tools/install-kubectl-linux/

https://www.yht7.com/news/15326

https://github.com/kubernetes/minikube/issues/10059

https://www.cnblogs.com/yang417/p/14721761.html

https://blog.csdn.net/qq_21127151/article/details/109269478

Ingress插件下载镜像失败
===

https://www.bountysource.com/issues/94161459-ingress

https://github.com/kubernetes/minikube/issues/9669

https://github.com/kubernetes/minikube/issues/10544


Minikube Dashboard对外暴露访问链接
====
```
Minikube启动Dashboard后默认只能localhost访问，如果需要开放外部访问需要添加一层代理

使用proxy代理到虚拟机的指定端口

` kubectl proxy --address='0.0.0.0'  --accept-hosts='^*$' `

visit: `http://39.98.92.77:8001/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/cronjob?namespace=default`

```


kubectl proxy
====
让外部网络访问K8S service的ClusterIP



示例：Ingress通过互联网访问应用
====
https://www.cnblogs.com/sanduzxcvbnm/p/13038059.html

setting up self signed https
===
https://itnext.io/setting-up-self-signed-https-access-to-local-dev-k8s-cluster-in-minikube-539bc62ad62f