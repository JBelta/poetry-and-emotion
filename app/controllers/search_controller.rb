class SearchController < ApplicationController

  def index
    @author = SearchFacade.find_author(params[:author])
    binding.pry
  end
end
