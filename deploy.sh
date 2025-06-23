#!/bin/bash
# Deploy Loki stack to Kubernetes in the 'hse-coursework-health' namespace

set -e

NAMESPACE="hse-coursework-health" 


# Create namespace if it doesn't exist
echo "Проверка существования namespace..."
kubectl get namespace "$NAMESPACE" >/dev/null 2>&1 || {
  echo "Namespace не найден. Создаю namespace $NAMESPACE..."
  kubectl create namespace "$NAMESPACE"
}

helm uninstall loki --namespace hse-coursework-health || true

# echo "Добавление репозитория Helm Grafana..."
# helm repo add grafana https://grafana.github.io/helm-charts

# echo "Обновление репозиториев Helm..."
# helm repo update

echo "Установка или обновление Loki в namespace $NAMESPACE..."
# helm upgrade --install loki grafana/loki -f values.yaml --namespace "$NAMESPACE"

helm install loki grafana/loki -f values.yaml --namespace "$NAMESPACE"


echo "Деплой Loki завершён."
