Dado('que faço uma requisição GET para o endpoint de obter autores') do
    @response = @services.authors.get_authors 
end
  
Dado('que faço uma requisição GET para o endpoint de obter autores por livro') do
    @book = @services.books.get_books.sample
    puts @book
    @response = @services.authors.get_author_by_book @book['id']
    puts @response
end

Dado('que faço uma requisição POST para o endpoint de cadastrar autor') do
    @author = Author.new
    puts @author.id = Faker::Number.number(digits: 4)
    puts @author.idbook = @services.books.get_books.sample['id']
    puts @author.firstname = Faker::Name.first_name
    puts @author.lastname = Faker::Name.last_name
    @response = @services.authors.post_author @author
    puts @response
end

Então('o status da resposta é {int}') do |status|
    expect(@response.code).to eq status
end
  
Dado('que faço uma requisição GET para o endpoint de obter autores com id do autor') do
    @author = @services.authors.get_authors.sample
    puts @author
    @response = @services.authors.get_author_by_id @author['id']
    puts @response 
end

Dado('que faço uma requisição PUT para o endpoint de editar autor') do
    @author = Author.new
    puts @author.id = @services.books.get_books.sample['id']
    puts @author.idbook = @services.authors.get_authors.sample['id']
    puts @author.firstname = Faker::Name.first_name
    puts @author.lastname = Faker::Name.last_name
    @response = @services.authors.post_author @author
end

Dado('que faço uma requisição DELETE para o endpoint de excluir autor') do
    @author = @services.authors.get_authors.sample
    puts @author
    @response = @services.authors.delete_author @author['id']
    puts @response 
end