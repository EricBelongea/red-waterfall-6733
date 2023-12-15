class SearchFacade
  def self.find_by_nation(nation)
    json_response = SearchService.find_by_nation(nation)
    json_response.map do |person|
      Person.new(person)
    end
  end
end