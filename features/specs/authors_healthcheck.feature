#language: pt
@healthcheck
Funcionalidade: Testes de healthcheck da api de autores

Cenário: Healthcheck endpoint listar autores
Dado que faço uma requisição GET para o endpoint de obter autores
Então o status da resposta é 200

Cenário: Healthcheck endpoint listar autores por livro
Dado que faço uma requisição GET para o endpoint de obter autores por livro
Então o status da resposta é 200

Cenário: Healthcheck endpoint cadastrar autor
Dado que faço uma requisição POST para o endpoint de cadastrar autor
Então o status da resposta é 200