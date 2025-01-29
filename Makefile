# Variáveis
IMAGE_NAME = desafio_cd
CONTAINER_NAME = desafio_cd_container
JUPYTER_PORT = 8888

# Inicia o ambiente Docker (primeira vez)
setup:
	docker build -t $(IMAGE_NAME) .
	docker run -d \
		-p $(JUPYTER_PORT):8888 \
		-v "${PWD}":/app \
		--name $(CONTAINER_NAME) \
		$(IMAGE_NAME)

# Para o container
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

# Compila/executa o app.py dentro do container existente
run-app:
	docker exec $(CONTAINER_NAME) python app.py

# Inicia o Jupyter Lab
run-jupyter:
	docker exec -it $(CONTAINER_NAME) jupyter lab --ip 0.0.0.0 --port 8888 --no-browser --allow-root --NotebookApp.token='senha123'

# Reinicia o container
restart:
	docker restart $(CONTAINER_NAME)

.PHONY: setup stop run-app run-jupyter restart