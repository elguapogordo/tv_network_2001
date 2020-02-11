class Network

  attr_reader :name, :shows, :actors_by_show

  def initialize(name)
    @name = name
    @shows = []
    @actors_by_show = {}
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

  def actors_by_show
    shows.each { |show| @actors_by_show[show.name] = show.actors }
    @actors_by_show
  end

end
