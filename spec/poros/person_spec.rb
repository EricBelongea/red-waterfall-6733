require "rails_helper"

RSpec.describe "Person PORO" do
  it "Can create a person" do
    attrs = {
      _id: "6789",
      allies: ["can", "be", "array"],
      enemies: nil,
      photoUrl: "/aang",
      name: "Kioshi",
      affiliation: "Avatar, Earth Kingdom"
    }

    person = Person.new(attrs)

    expect(person).to respond_to(:id)
    expect(person.id).to be_a(String)
    expect(person.id).to eq("6789")
    
    expect(person).to respond_to(:name)
    expect(person.name).to be_a(String)
    expect(person.name).to eq("Kioshi")
    
    expect(person).to respond_to(:allies)
    expect(person.allies).to be_a(Array)
    expect(person.allies).to eq(["can", "be", "array"])
    
    expect(person).to respond_to(:enemies)
    expect(person.enemies).to eq(nil)
    
    expect(person).to respond_to(:photoUrl)
    expect(person.photoUrl).to be_a(String)
    expect(person.photoUrl).to eq("/aang")
    
    expect(person).to respond_to(:affiliation)
    expect(person.affiliation).to be_a(String)
    expect(person.affiliation).to eq("Avatar, Earth Kingdom")
  end
end