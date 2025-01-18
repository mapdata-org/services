# Setup do banco de dados global

Este repositório contém scripts para configurar e iniciar os bancos de dados globais.

## Pré-requisitos

- Docker
- Docker Compose
- Systemd

## Clonando o Repositório

Para clonar o repositório, execute o seguinte comando:

```bash
cd /opt
sudo git clone https://github.com:iloElias/database.git
cd database
```

## Executando o Script de Inicialização

Para configurar e iniciar os bancos de dados, execute o script `init.sh`:

```bash
./init.sh
```

Este script irá:

1. Criar uma rede Docker global, se não existir.
2. Configurar permissões para os scripts necessários.
3. Configurar um serviço systemd para iniciar os bancos de dados globais.
4. Inicializar os serviços definidos no Docker Compose.
5. Conectar o container do PostgreSQL à rede global.
6. Executar o script de inicialização dos bancos de dados.

## Observações

Verifique se você tem as permissões necessárias para executar scripts e comandos Docker no seu sistema.
