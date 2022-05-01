#!/bin/bash
calico_version=v3.22.1
coredns_version=1.8.7
hub=registry.cn-hangzhou.aliyuncs.com

for i in `cat calico`
do
  docker pull calico/$i:$calico_version
  docker tag  calico/$i:$vserion $hub/asvex/$i:$calico_version
  docker push $hub/asvex/$i:$calico_version
done

docker pull coredns/coredns:1.8.7
docker tag coredns/coredns:1.8.7 $hub/asvex/$i:coredns_version
docker push $hub/asvex/$i:$coredns_version
