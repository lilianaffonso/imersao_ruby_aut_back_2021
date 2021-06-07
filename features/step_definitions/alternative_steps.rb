Dado('que faço uma requisição GET para o endpoint de obter autores por livro com id {string}') do |idBook|
    @response = @services.authors.get_author_by_book idBook
    puts @response
end

Então('a busca não retorna nenhum resultado') do
    expect(@response.body).to eql('[]')
end

Dado('que faço uma requisição GET para o endpoint de obter autores com id {string}') do |idAuthor|
    @response = @services.authors.get_author_by_id idAuthor
    puts @response 
end
  
Então('a busca não retorna resultados') do
    @var = JSON.parse(@response)
    expect(@var['title']).to eql("Not Found")
end

