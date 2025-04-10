# Проверить, что front-end может подключиться к back-end-api и наоборот
kubectl exec -it <front-end-pod> -- curl back-end-api-app  # Должно работать
kubectl exec -it <back-end-api-pod> -- curl front-end-app  # Должно работать

# Проверить, что admin-front-end может подключиться к admin-back-end-api и наоборот
kubectl exec -it <admin-front-end-pod> -- curl admin-back-end-api-app  # Должно работать
kubectl exec -it <admin-back-end-api-pod> -- curl admin-front-end-app  # Должно работать

# Проверить изоляцию (должно НЕ работать)
kubectl exec -it <front-end-pod> -- curl admin-back-end-api-app  # Должно быть "Connection timed out"
kubectl exec -it <admin-front-end-pod> -- curl back-end-api-app  # Должно быть "Connection timed out"