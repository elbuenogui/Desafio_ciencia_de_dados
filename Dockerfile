# Use uma imagem base Python oficial
FROM python:3.8-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o arquivo de requirements primeiro (boa prática para cache de layers)
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o resto do código do projeto
COPY . .

# Expõe a porta 8888 (para Jupyter)
EXPOSE 8888

# Define variável de ambiente para não solicitar confirmação ao sair
ENV JUPYTER_ENABLE_LAB=yes
ENV JUPYTER_TOKEN=senha123

# O comando será substituído pelos comandos do Makefile
CMD ["tail", "-f", "/dev/null"]