#!/bin/bash

echo "=== ClusterRoleBindings ==="
kubectl get clusterrolebindings -o custom-columns='NAME:.metadata.name,ROLE:.roleRef.name,USERS:.subjects[?(@.kind=="User")].name' | awk 'NR>1'

echo -e "\n=== RoleBindings ==="
for ns in $(kubectl get ns -o jsonpath='{.items[*].metadata.name}'); do
  echo "Namespace: $ns"
  kubectl get rolebindings -n $ns -o custom-columns='NAME:.metadata.name,ROLE:.roleRef.name,USERS:.subjects[?(@.kind=="User")].name' | awk 'NR>1'
  echo
done