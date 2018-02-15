class Album
  attr_reader :album_name, :tracklist, :year
  @@list = []

  def initialize(attributes)
    @album_name = attributes[:album_name]
    @tracklist = attributes[:tracklist]
    @year = attributes[:year]
  end

  def add_to_list
    @@list.push(self)
  end

  def self.list
    @@list
  end

end
