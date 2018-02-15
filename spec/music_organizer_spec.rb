require('rspec')
require('artist')
require('pry')

describe('Artist') do
  before do
    artist = Artist.new({'name' => 'Mewwithoutyou', 'genre' => 'rock'})
  end

  describe('#initalize') do
    it('initializes a new artist object') do
      expect(artist.name).to(eq('Mewwithoutyou'))
      expect(artist.genre).to(eq('rock'))
    end
  end
end
