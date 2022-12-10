#!/bin/bash

set -e

eksctl utils associate-iam-oidc-provider --cluster udacity-cluster \
--approve --region us-east-2
eksctl create iamserviceaccount --cluster udacity-cluster --name cluster-autoscaler \
 --namespace kube-system --attach-policy-arn \
 "arn:aws:iam::677755283589:policy/udacity-k8s-autoscale" \
 --approve --region us-east-2
kubectl apply -f starter/apps/bloatware/cluster_autoscale.yml

