class SearchController < ApplicationController

  def index
    @author = SearchFacade.author(params[:author])
    binding.pry
  end
end
