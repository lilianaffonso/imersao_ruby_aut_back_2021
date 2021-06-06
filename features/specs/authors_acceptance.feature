#language: pt

@acceptance
Funcionalidade: Testes de aceitação da api de autores

#NÃO SE APLICA PORQUE NA FAKERAPI NÃO GRAVA DE VERDADE O AUTOR CADASTRADO
#Cenário: Verificar lista de autores
#Dado que cadastro um autor
#E faço uma requisição GET para o endpoint de obter autores
#Então o status da resposta é 200
#E recebo uma lista de autores
#E o autor cadastrado consta na lista

Cenário: Verificar lista de autores por livro
Dado que faço uma requisição GET para o endpoint de obter autores por livro
Então o status da resposta é 200
E recebo uma lista de autores
E os autores são os do livro consultado

Cenário: Verificar cadastro de autor
Dado que faço uma requisição POST para o endpoint de cadastrar autor
Então o status da resposta é 200
E recebo um autor
E os dados do autor cadastrado estão conforme informado

