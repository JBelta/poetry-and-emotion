class SearchFacade

  def self.conn
    conn = Faraday.new("https://poetrydb.org")
  end

  def self.find_author(author)
    response = conn.get("/author/#{author}")
binding.pry
  JSON.parse(response.body, symbolize_names: true)
  end
end
