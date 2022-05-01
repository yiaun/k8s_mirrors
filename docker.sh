#!/bin/bash
version=v3.22.1
hub=registry.cn-hangzhou.aliyuncs.com

for i in caliao/cni
docker pull $i:$version
docker tag $i:$vserion $hub/asvex/$i:$version
docker push $hub/asvex/$i:$version
