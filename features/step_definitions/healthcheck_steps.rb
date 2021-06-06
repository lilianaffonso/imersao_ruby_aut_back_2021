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
  
