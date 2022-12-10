#!/bin/bash

set -e

kubectl delete -f starter/apps/blue-green/blue.yml
kubectl delete -f starter/apps/blue-green/index_blue_html.yml