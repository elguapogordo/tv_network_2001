class Network

  attr_reader :name, :shows, :actors_by_show

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

  def actors_by_show
    @actors_by_show = Hash.new { |hash, key| hash[key] = [] }
    shows.each do |show|
      @actors_by_show[show.name] = show.actors
    end
  end

end
