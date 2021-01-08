class SearchFacade

  def self.author(author)
    conn = Faraday.new(
      url: "https://poetrydb.org/author/#{author}"
    )
    binding.pry
  end
end
