require "rails_helper"

RSpec.describe "Search Facade" do
  it "Can return people by nation", :vcr do
    fire_nation = SearchFacade.find_by_nation("fire+nation")

    person = fire_nation.first

    expect(person).to respond_to(:id)
    expect(person.id).to be_a(String)
    expect(person.id).to eq("5cf5679a915ecad153ab68da")
    
    expect(person).to respond_to(:name)
    expect(person.name).to be_a(String)
    expect(person.name).to eq("Azula")
    
    expect(person).to respond_to(:allies)
    expect(person.allies).to be_a(Array)
    expect(person.allies).to eq(["Ozai", "Zuko "])
    
    expect(person).to respond_to(:enemies)
    expect(person.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
    
    expect(person).to respond_to(:photoUrl)
    expect(person.photoUrl).to be_a(String)
    expect(person.photoUrl).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
    
    expect(person).to respond_to(:affiliation)
    expect(person.affiliation).to be_a(String)
    expect(person.affiliation).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end