#!/usr/bin/ruby

class Artist
  attr_reader :name, :genre, :list, :albums
  @@list = []

  def initialize(attributes)
    @name = attributes[:name]
    @genre = attributes[:genre]
    @albums = []
  end

  def add_to_list
    @@list.push(self)
  end

  def self.list
    @@list
  end

  def add_album(attributes)
    new_album = Album.new(attributes)
    self.albums.push(new_album)
    new_album
  end

end
