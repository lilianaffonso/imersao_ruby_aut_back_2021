Então('os autores são os do livro consultado') do
    @response.each { |author| expect(author['idBook']).to eq(@book['id']) }
end

Então('os dados do autor cadastrado estão conforme informado') do
    expect(@response['id']).to eql(@author.id)
    expect(@response['idBook']).to eql(@author.idbook)
    expect(@response['firstName']).to eql(@author.firstname)
    expect(@response['lastName']).to eql(@author.lastname) 
end

Então('os dados são os do autor buscado') do
    expect(@response['id']).to eql(@author['id'])
    expect(@response['firstName']).to eql(@author['firstName'])
    expect(@response['lastName']).to eql(@author['lastName']) 
    puts 'Author'
    puts @author['id']
    puts @author['firstName']
    puts @author['lastName']
    puts 'Response'
    puts @response['id']
    puts @response['firstName']
    puts @response['lastName']
end

Então('os dados do autor editado estão conforme informado') do
    expect(@response['id']).to eql(@author.id)
    expect(@response['idBook']).to eql(@author.idbook)
    expect(@response['firstName']).to eql(@author.firstname)
    expect(@response['lastName']).to eql(@author.lastname) 
    puts 'Author'
    puts @author.id
    puts @author.idbook
    puts @author.firstname
    puts @author.lastname
    puts 'Response'
    puts @response['id']
    puts @response['idBook']
    puts @response['firstName']
    puts @response['lastName']
end