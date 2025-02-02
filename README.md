# Projeto configurado com Docker e Makefile para execução simplificada.


# Pré-requisitos

   Docker instalado
     -Garantirá que o ambiente seja consistente em qualquer máquina.
   Make instalado

# Como executar

   # Clone o repositório, acesse o diretório do projeto:

      git clone https://github.com/elbuenogui/Desafio_ciencia_de_dados
      cd desafio_cd

   # No diretório do projeto, execute:

      make setup
      make run-jupyter

   # Comandos Disponíveis

      make setup: Cria e inicia o container (usar apenas na primeira vez)
      make run-app: Recompila e executa o projeto
      make stop: Para e remove o container


