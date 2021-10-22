# Tour of Heroes

- 📚 Curso Ruby on Rails 6 como uma API criando um Heroes CRUD.

<!-- [Curso de Ruby on Rails 6 como API](https://www.youtube.com/watch?v=gTR6lx00Nac&list=PLqsayW8DhUmuvgOX08aXYk6Y-HGrdYg20) no YouTube. -->

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.0.0
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.4
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      SQLite3 (dev) / PostgreSQL (prod)
    </td>
  </tr>
</table>

## Configurações iniciais para executar o projeto

```bash
# clonar o projeto
git clone https://github.com/peimelo/curso_tour_of_heroes_api.git
cd curso_tour_of_heroes_api

# instalar dependências do Ruby on Rails
bundle install

# criar o banco de dados de desenvolvimento e teste
rails db:create

# cria as tabelas
rails db:migrate

# execute o projeto
rails s
```

Aplicação disponível em  `http://localhost:3000`.

---