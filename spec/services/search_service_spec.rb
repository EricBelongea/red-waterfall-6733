require "rails_helper"

RSpec.describe "Search Service" do
  it "returns json we expect", :vcr do
    data = SearchService.find_by_nation("fire+nation")

    expect(data).to be_a(Array)
    expect(data).to_not be_a(Hash)

    person = data.first

    expect(person).to be_a(Hash)

    expect(person[:name]).to be_present
    expect(person[:name]).to be_a(String)

    expect(person[:affiliation]).to be_present
    expect(person[:affiliation]).to be_a(String)
    
    expect(person[:photoUrl]).to be_present
    expect(person[:photoUrl]).to be_a(String)
    
    expect(person[:allies]).to be_present
    expect(person[:allies]).to be_a(Array)
    expect(person[:allies].first).to be_a(String)    
    
    expect(person[:enemies]).to be_present
    expect(person[:enemies]).to be_a(Array)
    expect(person[:enemies].first).to be_a(String)
    
    expect(person[:_id]).to be_present
    expect(person[:_id]).to be_a(String)
  end
end