class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(title)
    shows << title
  end

end
