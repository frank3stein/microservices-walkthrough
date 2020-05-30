#!/bin/sh
docker build ./udagram-api-feed/. -t martinezi/udagram-api-feed
docker build ./udagram-api-user/. -t martinezi/udagram-api-user
docker build ./udagram-frontend/. -t martinezi/udagram-frontend
docker build ./udagram-deployment/docker/. -t martinezi/udagram-reverse-proxy

docker push martinezi/udagram-api-feed
docker push martinezi/udagram-api-user
docker push martinezi/udagram-frontend
docker push martinezi/udagram-reverse-proxy