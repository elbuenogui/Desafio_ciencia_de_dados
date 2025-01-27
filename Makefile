# Variáveis
IMAGE_NAME = desafio_cd
CONTAINER_NAME = desafio_cd_container

# Inicia o ambiente Docker (primeira vez)
setup:
	docker build -t $(IMAGE_NAME) .
	docker run -d --name $(CONTAINER_NAME) $(IMAGE_NAME)

# Para o container
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

# Compila/executa o projeto dentro do container existente
run:
	docker exec $(CONTAINER_NAME) rm -rf /app/*
	docker cp . $(CONTAINER_NAME):/app
	docker exec $(CONTAINER_NAME) python app.py
	

.PHONY: setup stop run