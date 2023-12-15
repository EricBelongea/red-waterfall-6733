class Person
  attr_reader :id, :name, :allies, :enemies, :photoUrl, :affiliation

  def initialize(data)
    @id = data[:_id]
    @allies = no_allies(data[:allies])
    @enemies = no_enemies(data[:enemies])
    @photoUrl = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]
  end

  def no_allies(allies)
    if allies.blank?
      allies = ["None"]
    else
      allies = allies
    end
  end

  def no_enemies(enemies)
    if enemies.blank?
      enemies = ["None"]
    else
      enemies = enemies
    end
  end
end