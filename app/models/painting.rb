class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    Painting.all << self
  end

  def self.all
    @@all
  end
  
  def self.total_price
    total = 0
    all.each { |painting| total += painting.price }
    total
  end
end
