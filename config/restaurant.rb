
class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all_reservations
    Reservation.all.select do |item|
      item.restaurant == self
    end
  end

  def all_guests
    name = all_reservations.map do |item|
      item.guest.first_name + ' ' + item.guest.last_name
    end
    name
  end

  def self.all
    @@all
  end

end
