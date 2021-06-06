class Books
    include HTTParty

    headers 'Content-Type' => 'application/json'
    base_uri 'https://fakerestapi.azurewebsites.net'

    def get_books
        self.class.get('/api/v1/Books')
    end

end