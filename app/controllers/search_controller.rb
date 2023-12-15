class SearchController < ApplicationController
  def index
    @nation = SearchFacade.format_nation(params[:nation])
    @persons = SearchFacade.find_by_nation(params[:nation])
    @count = @persons.count
  end
end