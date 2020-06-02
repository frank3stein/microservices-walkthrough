#!/bin/sh
kubectl port-forward deployment/reverseproxy 8080:8080 &
kubectl port-forward deployment/frontend 8100:80 &