class Author
  attr_reader :name, :titles

  def initialize(arg)
    @name = arg[:name]
    @titles = Array.new
  end 
end
