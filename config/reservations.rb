
class Reservation

  attr_accessor :date, :time, :party_size, :status, :restaurant, :guest

  @@all = []

  def initialize(date, time, party_size, status='Pending', restaurant, guest)
    @date = date
    @time = time
    @party_size = party_size
    @status = status
    @restaurant = restaurant
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

end