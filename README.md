# Desafio para vaga de BackEnd - Foco em Ruby On Rails:
- Desafio:

   - [x] Criar uma rota para importar em massa vários filmes
      -   Você pode criar essa rota para receber um arquivo csv ou um payload json, ou outra forma que ficar mais fácil de integrar
   - [x] Criar uma rota para submeter notas em massa para vários filmes
      -   Você pode criar essa rota para receber um arquivo csv ou um payload json, ou outra forma que ficar mais fácil de integrar
   - [x] As tarefas acima devem ser executadas em segundo plano
      -   Recomendamos usar o Sidekiq para gerenciar as tarefas em segundo plano, mas você pode escolher outra solução

- Pontos Extras **(em andamento)**:

    - [ ] Criar testes para as rotas da API e models da aplicação
       -  Recomendamos usar o Rspec para os testes, mas você pode escolher outra solução

## Tutorial para rodar o projeto

 - Esse tutorial leva as seguintes informações
   -  Caso o usuario não tenha o docker e o github instalado

----------------------------------
### 1. Github

  - Segue um link ensinando a clonar o projeto do GitHub (Após clonar o repositório, siga os próximos passos):
    - [Github-Clonar Repo](https://docs.github.com/pt/repositories/creating-and-managing-repositories/cloning-a-repository#cloning-a-repository)

--------------------------------

### 2. Passo a passo do Docker **(Em andamento)**

-------------------------------

- Caso tenha interesse em fazer novos projetos com Rails e docker, estarei deixando um guia em inglês do github
  - Quickstart: Compose and Rails [Github](https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails/)

-------------------------------

### 3. Executando comandos para o ruby

  - Com o projeto ja clonado e rodando com o docker faremos os seguintes comandos 
```ruby
  bundle install
  rails db:migrate
  rails db:seed
```

-----------------------------

### Author
Follow me on [GitHub](https://github.com/AzvedoGabriel) or [LinkedIn](www.linkedin.com/in/azevedo-gabriel-ssa)