class Show

  attr_reader :name, :creator, :characters, :total_salary

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.map { |character| character.salary }.sum
  end

end
