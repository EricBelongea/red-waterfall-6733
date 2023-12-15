class Person
  attr_reader :id, :name, :allies, :enemies, :photoUrl, :affiliation

  def initialize(data)
    @id = data[:_id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photoUrl = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end
end