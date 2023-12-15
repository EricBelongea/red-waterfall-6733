class SearchFacade
  def self.find_by_nation(nation)
    json_response = SearchService.find_by_nation(nation)
    json_response.map do |person|
      Person.new(person)
    end
  end
# This could be the Facade Sin, I want a pretty dynamic name to display. 
  def self.format_nation(nation_params)
    nation_params.split('+').map(&:capitalize).join(' ')
  end
end