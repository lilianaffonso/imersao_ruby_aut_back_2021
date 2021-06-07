#language: pt
@alternative
Funcionalidade: Testes alternativos da api de autores

#NÃO SE APLICA PORQUE NO GET EU NÃO TENHO COMO VARIAR NENHUM DADO NA REQUISIÇÃO PARA FAZER FALHAR O RETORNO (DO PONTO DE VISTA DE NEGÓCIO). 
#Cenário: Verificar lista de autores

Cenário: Verificar lista de autores de um livro inexistente
Dado que faço uma requisição GET para o endpoint de obter autores por livro com id '99999'
Então o status da resposta é 200
E a busca não retorna nenhum resultado

Cenário: Verificar busca de autor por id inexistente
Dado que faço uma requisição GET para o endpoint de obter autores com id '99999'
Então o status da resposta é 404
E a busca não retorna resultados

#NÃO SE APLICA PORQUE A API ACEITA QUALQUER VALOR E SEM VALOR TBM
#EM OUTRAS APIS, É POSSÍVEL ENVIAR UM IDBOOK INEXISTENTE, NUMEROS NO LUGAR DE NOME/SOBRENOME, ETC, E VALIDAR QUE NÃO EFETIVOU O CADASTRO
#Cenário: Verificar cadastro de autor

#NÃO SE APLICA PORQUE A API ACEITA QUALQUER VALOR E SEM VALOR TBM
#EM OUTRAS APIS, É POSSÍVEL ENVIAR UM ID OU IDBOOK INEXISTENTE, NUMEROS NO LUGAR DE NOME/SOBRENOME, ETC, E VALIDAR QUE NÃO EFETIVOU O CADASTRO
#Cenário: Verificar edição de autor
