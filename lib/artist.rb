#!/usr/bin/ruby

class Artist
  attr_reader :name, :genre, :list
  @@list = []

  def initialize(attributes)
    @name = attributes[:name]
    @genre = attributes[:genre]
  end

  def add_to_list
    @@list.push(self)
  end

  def self.list
    @@list
  end

end
