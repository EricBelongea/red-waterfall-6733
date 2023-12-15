class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @persons = SearchFacade.find_by_nation(params[:nation])
    @count = @persons.count
  end
end