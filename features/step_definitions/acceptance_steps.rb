Então('os autores são os do livro consultado') do
    @response.each { |author| expect(author['idBook']).to eq(@book['id']) }
end

Então('os dados do autor cadastrado estão conforme informado') do
    expect(@response['id']).to eql(@author.id)
    expect(@response['idBook']).to eql(@author.idbook)
    expect(@response['firstName']).to eql(@author.firstname)
    expect(@response['lastName']).to eql(@author.lastname) 
end