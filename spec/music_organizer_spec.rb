require('rspec')
require('artist')
require('pry')

describe('Artist') do

  describe('#initalize') do
    it('initializes a new artist object') do
      artist = Artist.new({:name => 'Mewwithoutyou', :genre => 'rock'})
      expect(artist.name).to(eq('Mewwithoutyou'))
      expect(artist.genre).to(eq('rock'))
    end
  end
end
