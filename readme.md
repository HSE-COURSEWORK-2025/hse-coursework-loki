# HSE Coursework: Loki

Этот репозиторий содержит манифесты и скрипты для деплоя Loki в Kubernetes-кластере.

## Структура
- `values.yaml` — параметры Helm-чарта Loki
- `deploy.sh` — автоматический деплой Loki
- `stop.sh` — удаление всех ресурсов Loki из кластера

## Быстрый старт
1. Запустите деплой:
   ```bash
   ./deploy.sh
   ```
2. Для удаления:
   ```bash
   ./stop.sh
   ```
