# Nome da imagem Docker
IMAGE_NAME = desafio_cd

# Arquivo para rastrear última build
DOCKER_BUILD_MARKER = .docker_build

# Construir a imagem Docker apenas se necessário
$(DOCKER_BUILD_MARKER): Dockerfile requirements.txt
	docker build -t $(IMAGE_NAME) .
	touch $(DOCKER_BUILD_MARKER)

# Rodar o app.py dentro do container
run: $(DOCKER_BUILD_MARKER)
	docker run $(IMAGE_NAME)

# Forçar reconstrução da imagem
rebuild:
	rm -f $(DOCKER_BUILD_MARKER)
	docker build -t $(IMAGE_NAME) .
	touch $(DOCKER_BUILD_MARKER)

# Comando padrão ao executar apenas 'make'
.DEFAULT_GOAL := run

.PHONY: run rebuild