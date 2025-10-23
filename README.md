# Setup do banco de dados global

Este repositório contém scripts para configurar e iniciar os bancos de dados globais.

## Pré-requisitos

- **Docker**: Para realizar
- **Systemd**:

## Serviços

Atualmente este comando disponibiliza os seguintes serviços:

- **Postgres**: Banco de dados
- **Rabbitmq**: Gerenciamento de filas
- **Minio**: Bucket de arquivos

Foram removidos os seguintes serviços:

- **Mysql**: Não utilizo este banco de dados

## Clonando o Repositório

Para clonar o repositório, execute o seguinte comando:

```sh
cd /opt
sudo git clone https://github.com:iloElias/services.git
cd services
```

## Executando o Script de Inicialização

Para configurar e iniciar os bancos de dados, execute o script `init.sh`:

```sh
./init.sh
```

Este script irá:

1. Criar uma rede Docker global, se não existir.
2. Configurar permissões para os scripts necessários.
3. Configurar um serviço systemd para iniciar os bancos de dados globais.
4. Inicializar os serviços definidos no Docker Compose.
5. Conectar os containers dos serviços à rede global.
6. Executar o script de inicialização dos bancos de dados.

## Recomendações

Para garantir que seus serviços inicializem o banco de dados próprio de forma correta, utilize o script que está em `./scripts/init-db.sh`.

O exemplo de uso com o docker compose está no arquivo `./docker-compose.example.yml`. Lembrando que os nomes podem ser alterados conforme suas nescidades.

## Desabilitando

Para desabilitar os serviços, no intuito de eles não ligarem automaticamente sempre que o sistema operacional iniciar, rode o comando: `sudo systemctl disable mapdata-global-databases.service`.
