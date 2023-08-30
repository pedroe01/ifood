# Projeto iFood

## Proposta
Utilizando a linguagem Ruby e o framework Rails nossa proposta é entender o funcionamento de um grande projeto ativamente, nos baseando na plataforma de delivery de comida iFood, reunindo os conhecimentos de todas as disciplinas estudadas até o momento em um único projeto.

## Integrantes
| Aluno                        | RA      |
| -----------------------------| ------- |
| Carlos Alexandre Porto Silva | 2102395 |
| Matheus Denobile Coffers     | 2101978 |
| Pedro Egydio da Silva Faria  | 2102057 |
| Rodrigo Precerutti           | 2102612 |

# Ambiente
Nossa aplicação foi preparada desde o início para ser executada em contêiners Docker, maximizando a compatibilidade com os diferentes ambientes de desenvolvimento utilizados pela equipe, e também, facilitando o processo de Deploy da aplicação

<details>
<summary>Como subir a aplicação em Docker</summary>

# Acessar a aplicação em: [localhost:3000](localhost:3000)

# Configurando a aplicação pela primeira vez:

- 1. `docker-compose build web`
- 2. `docker-compose run --rm web rails db:migrate db:seed`

## Para iniciar o projeto:

### `docker-compose up web`

# FAQ:

## Se for necessário fazer um migration no bd (ActiveRecord::PendingMigrationError):

### `docker-compose run --rm web rails db:migrate`

## Se for necessário fazer o build da aplicação novamente:

### `docker-compose build web`

### (Pode ser necessário caso uma nova gem for adicionada ou se forem feitas alterações no Dockerfile)

## Para executar algum comando dentro do container:

### `docker-compose run --rm web (comando)`
</details>

# Autenticação
Utilizamos a biblioteca `omniauth` para facilitar a integração de diferentes provedores de autenticação em um só local, sendo possível se cadastrar utilizando:
- Gmail
- Facebook
- Email/Senha

# Rotas
| URL                                   | #                          |
| -----------------------               | ---------------            |
| `http://localhost:3000/`              | Página inicial             |
| `http://localhost:3000/users/sign_in` | Página de login            |
| `http://localhost:3000/users/sign_up` | Página de cadastro         |
| `http://localhost:3000/users/edit?`   | Página de edição do perfil |

### Em desenvolvimento:
- Adicionar Google Maps e armazenar o endereço selecionado
- Adicionar Login de Parceiros (Restaurantes)
- Adicionar CRUD de Produtos/Carrinho de compras
- UI/UX
- Deploy experimental

# Referências
- https://guides.rubyonrails.org
- https://stackoverflow.com
- https://developers.google.com/identity/protocols/oauth2?hl=pt-br
- https://developers.facebook.com/docs/facebook-login/
- https://developers.facebook.com/docs/facebook-login/guides/advanced/manual-flow/
- https://www.youtube.com/@ProgramadorShowzim
- https://www.youtube.com/@Deanin
