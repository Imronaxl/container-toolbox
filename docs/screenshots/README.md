# Скриншоты

| Файл                   | Что показать                                                       |
| ---------------------- | ------------------------------------------------------------------ |
| `01-docker-build.png`  | `docker build -t imeon/hello-app:1.0.0 .`                          |
| `02-docker-push.png`    | `docker push imeon/hello-app:1.0.0`                                |
| `03-docker-hub.png`     | Страница образа на Docker Hub                                      |
| `04-docker-run.png`    | `docker run -p 32777:32777 imeon/hello-app:1.0.0` + `curl`          |
| `05-minikube-start.png`| `minikube start` и `minikube status`                              |
| `06-kubectl-nodes.png` | `kubectl get nodes`                                                |
| `07-kubectl-pods.png`  | `kubectl get pods -l app=hello-app -o wide`                        |
| `08-kubectl-svc.png`   | `kubectl get svc hello-app`                                        |
| `09-port-forward.png`  | Терминал с запущенным `kubectl port-forward svc/hello-app 8080:80` |
| `10-browser-hello.png` | Окно браузера по адресу `http://localhost:8080/`                  |
| `11-curl-balance.png`  | Дважды `curl http://localhost:8080/` с разными `hostname`          |
