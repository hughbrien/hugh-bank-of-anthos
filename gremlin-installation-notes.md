


kubectl apply -f ./extras/jwt/jwt-secret.yaml

kubectl create namespace bank-of-athos
kubectl delete -f ./kubernetes-manifests/ 
kubectl apply -f ./kubernetes-manifests/  --namespace bank-of-athos


kubectl get service  -n bank-of-athos frontend | awk '{print $4}'


helm repo add gremlin https://helm.gremlin.com/
kubectl create namespace gremlin
helm install gremlin gremlin/gremlin --namespace gremlin \
    --set gremlin.hostPID=true \
    --set gremlin.container.driver=any \
    --set gremlin.secret.managed=true \
    --set gremlin.secret.type=secret \
    --set gremlin.secret.teamID=a4aa6238-c6ed-470f-aa62-38c6ed770ff7   \
    --set gremlin.secret.clusterID=hughbrien-bank-of-athos \
    --set gremlin.secret.teamSecret=ca1c657c-154f-4456-9c65-7c154fb45646








2:46
or kubectl get service frontend -n (yournamespacehere) | awk '{print $4}'



Account ID: 8569-4020-8208
IAM User : hugh.brien@gremlin.com

aws iam create-role \
  --role-name hughbrien-eksClusterRole \
  --assume-role-policy-document file://"cluster-trust-policy.json"

  aws iam attach-role-policy \
  --policy-arn arn:aws:iam::aws:policy/AmazonEKSClusterPolicy \
  --role-name hughbrien-eksClusterRole



aws eks update-kubeconfig --region us-east-2 --name hughbrien-bank-of-athos


aws sts get-caller-identity
856940208208    arn:aws:iam::856940208208:user/hugh.brien@gremlin.com   AIDA4PBM54BIB2MVP6Q4N


aws --versio
aws-cli/2.7.16 Python/3.9.11 Darwin/21.5.0 exe/x86_64 prompt/off



kubectl config --kubeconfig=./config use-context docker-desktop




Guestbook 

kubectl apply -f https://k8s.io/examples/application/guestbook/redis-leader-deployment.yaml
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-leader-service.yaml
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-follower-deployment.yaml
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-follower-service.yaml
kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-deployment.yaml
kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-service.yaml
kubectl port-forward svc/frontend 8080:80
kubectl get service frontend
kubectl scale deployment frontend --replicas=5

kubectl get pods







kubectl delete -f https://k8s.io/examples/application/guestbook/redis-leader-deployment.yaml
kubectl delete -f https://k8s.io/examples/application/guestbook/redis-leader-service.yaml
kubectl delete -f https://k8s.io/examples/application/guestbook/redis-follower-deployment.yaml
kubectl delete -f https://k8s.io/examples/application/guestbook/redis-follower-service.yaml
kubectl delete -f https://k8s.io/examples/application/guestbook/frontend-deployment.yaml
kubectl delete -f https://k8s.io/examples/application/guestbook/frontend-service.yaml



Gremlin Manual Installation 

kubectl create namespace gremlin
Download Certificates 
mv Hugh-client.pub_cert.pem  gremlin.cert
mv Hugh-client.priv_key.pem  gremlin.key 

kubectl -n gremlin create secret generic gremlin-team-cert --from-file=/Users/hughbrien/Software/examples/guestbook/gremlin.cert --from-file=/Users/hughbrien/Software/examples/guestbook/gremlin.key


/Users/hughbrien/Software/examples/guestbook/gremlin.cert 


kubectl apply -f https://k8s.gremlin.com/resources/gremlin-chao.yaml





https://www.gremlin.com/docs/


Authorization: 
Bearer ZTczNTJhNmItYTlhMC01MTNjLTgxZTQtOTgwZjY4MGE3MGMzOmdyZW1saW5AZ3JlbWxpbmluYy5jb206NWNhMWFiMWUtZGVhZC1iZWVmLWZmZmYtMDAwMGZmZmYwMDAw


curl -X POST --header 'Content-Type: application/x-www-form-urlencoded' \
 --header 'Authorization: Bearer Authorization: Key ZTczNTJhNmItYTlhMC01MTNjLTgxZTQtOTgwZjY4MGE3MGMzOmdyZW1saW5AZ3JlbWxpbmluYy5jb206NWNhMWFiMWUtZGVhZC1iZWVmLWZmZmYtMDAwMGZmZmYwMDAw' \
    'https://api.gremlin.com/v1/attacks/'













