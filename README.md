# README

# Acessar a aplicação em: [localhost:3000](localhost:3000)

## Para iniciar o projeto:

### docker-compose up web

## Se for necessário fazer um migration no bd (ActiveRecord::PendingMigrationError):

### docker-compose run --rm web rails db:migrate

## Se for necessário fazer o build da aplicação novamente:

### docker-compose build web

### (Pode ser necessário caso uma nova gem for adicionada ou se forem feitas alterações no Dockerfile)

## Para executar algum comando dentro do container:

### docker-compose run --rm web (comando)