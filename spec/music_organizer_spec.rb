require('rspec')
require('artist')
require('album')
require('pry')

describe('Artist') do

  describe('#initalize') do
    it('initializes a new artist object') do
      artist = Artist.new({:name => 'Mewithoutyou', :genre => 'rock'})
      expect(artist.name).to(eq('Mewithoutyou'))
      expect(artist.genre).to(eq('rock'))
    end
  end

  describe('#add_to_list') do
    it('Adds artist and genre to list') do
      artist = Artist.new({:name => 'Mewithoutyou', :genre => 'rock'})
      artist.add_to_list
      expect(Artist.list()).to(eq([artist]))
    end
  end

  describe('#add_album') do
    it('adds album object to albums array within artist object') do
      artist = Artist.new({:name => 'Mewithoutyou', :genre => 'rock'})
      this_album = artist.add_album({:album_name => "AB Life", :year => "2002"})
      expect(artist.albums).to(eq([this_album]))
    end
  end
end

describe('Album') do
  describe('#initialize') do
    it('Initializes a new album object') do
      album = Album.new({:album_name => "AB Life", :year => "2002"})
      album.add_to_list
      expect(Album.list()).to(eq([album]))
    end
  end
end
