# Analytics (analyst1, manager1)
openssl genrsa -out analyst1.key 2048
openssl req -new -key analyst1.key -out analyst1.csr -subj "/CN=analyst1/O=viewers"
openssl x509 -req -in analyst1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out analyst1.crt -days 365
kubectl config set-credentials analyst1 --client-certificate=analyst1.crt --client-key=analyst1.key

openssl genrsa -out manager1.key 2048
openssl req -new -key manager1.key -out manager1.csr -subj "/CN=manager1/O=viewers"
openssl x509 -req -in manager1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out manager1.crt -days 365
kubectl config set-credentials manager1 --client-certificate=manager1.crt --client-key=manager1.key

# Dev (dev1, dev2)
openssl genrsa -out dev1.key 2048
openssl req -new -key dev1.key -out dev1.csr -subj "/CN=dev1/O=dev"
openssl x509 -req -in dev1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out dev1.crt -days 365
kubectl config set-credentials dev1 --client-certificate=dev1.crt --client-key=dev1.key

openssl genrsa -out dev2.key 2048
openssl req -new -key dev2.key -out dev2.csr -subj "/CN=dev2/O=dev"
openssl x509 -req -in dev2.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out dev2.crt -days 365
kubectl config set-credentials dev2 --client-certificate=dev2.crt --client-key=dev2.key

# Ops (ops1, ops2)
openssl genrsa -out ops1.key 2048
openssl req -new -key ops1.key -out ops1.csr -subj "/CN=ops1/O=ops"
openssl x509 -req -in ops1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out ops1.crt -days 365
kubectl config set-credentials ops1 --client-certificate=ops1.crt --client-key=ops1.key

openssl genrsa -out ops2.key 2048
openssl req -new -key ops2.key -out ops2.csr -subj "/CN=ops2/O=ops"
openssl x509 -req -in ops2.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out ops2.crt -days 365
kubectl config set-credentials ops2 --client-certificate=ops2.crt --client-key=ops2.key

# DevOps (devops1, devops2)
openssl genrsa -out devops1.key 2048
openssl req -new -key devops1.key -out devops1.csr -subj "/CN=devops1/O=devops"
openssl x509 -req -in devops1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out devops1.crt -days 365
kubectl config set-credentials devops1 --client-certificate=devops1.crt --client-key=devops1.key

openssl genrsa -out devops2.key 2048
openssl req -new -key devops2.key -out devops2.csr -subj "/CN=devops2/O=devops"
openssl x509 -req -in devops2.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out devops2.crt -days 365
kubectl config set-credentials devops2 --client-certificate=devops2.crt --client-key=devops2.key

# Security (sec1, sec2)
openssl genrsa -out sec1.key 2048
openssl req -new -key sec1.key -out sec1.csr -subj "/CN=sec1/O=security"
openssl x509 -req -in sec1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out sec1.crt -days 365
kubectl config set-credentials sec1 --client-certificate=sec1.crt --client-key=sec1.key

openssl genrsa -out sec2.key 2048
openssl req -new -key sec2.key -out sec2.csr -subj "/CN=sec2/O=security"
openssl x509 -req -in sec2.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out sec2.crt -days 365
kubectl config set-credentials sec2 --client-certificate=sec2.crt --client-key=sec2.key

# Admin (admin1, admin2)
openssl genrsa -out admin1.key 2048
openssl req -new -key admin1.key -out admin1.csr -subj "/CN=admin1/O=admins"
openssl x509 -req -in admin1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out admin1.crt -days 365
kubectl config set-credentials admin1 --client-certificate=admin1.crt --client-key=admin1.key

openssl genrsa -out admin2.key 2048
openssl req -new -key admin2.key -out admin2.csr -subj "/CN=admin2/O=admins"
openssl x509 -req -in admin2.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key \
  -CAcreateserial -out admin2.crt -days 365
kubectl config set-credentials admin2 --client-certificate=admin2.crt --client-key=admin2.key