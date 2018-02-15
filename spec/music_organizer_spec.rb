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
end

  describe('Album') do
    describe('#initialize')
    it('Initializes a new album object') do
      album = Album.new({:album_name => "AB Life", :year => "2002"})
      album.add_to_list
      expect(Album.list()).to(eq([album]))
    end
  end
