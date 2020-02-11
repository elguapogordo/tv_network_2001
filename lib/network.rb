class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(title)
    shows << title
  end

  def main_characters
    characters = []
    shows.each do |show|
      show.characters.each do |char|
        characters << char if (char.name === char.name.upcase) && (char.salary > 500000)
      end
    end
    characters
  end

end
