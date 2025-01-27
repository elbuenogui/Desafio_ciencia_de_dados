# Requisitos

Docker
Make

# Rodar o projeto
make

# Forçar reconstrução do ambiente Docker
make rebuild


# Docker
O projeto usa um Dockerfile que:

Usa Python 3.8
Instala todas as dependências do requirements.txt
Configura um ambiente isolado para execução

O Docker garantirá que o ambiente seja consistente em qualquer máquina
O ambiente Docker é reconstruído automaticamente se houver mudanças no Dockerfile ou requirements.txt
Todos os comandos via make são executados dentro do container Docker