require 'pry'

class Guest

  attr_reader :first_name, :last_name, :phone_number, :guest_notes, :reservation_notes

  @@all = []

  def initialize(first_name, last_name, phone_number, guest_notes=nil)
    @first_name = first_name
    @last_name = last_name
    @phone_number = phone_number
    @guest_notes = guest_notes
    @reservation_notes = reservation_notes
    @@all << self
  end
  def self.all
    @@all
  end

  def self.search_by_phone(phone_number)
    @@all.select {|guest_record|guest_record.phone_number == phone_number}
  end

  def self.search_by_first_name(first_name)
    @@all.select {|guest_record|guest_record.first_name == first_name}
  end

  def self.search_by_last_name(last_name)
    @@all.select {|guest_record| guest_record.last_name == last_name}
  end

  def guest_history
    Reservation.all.select do |element|
      element.guest == self
    end
  end

  def past_restaurants
    restaurants = guest_history.map do |item|
      item.restaurant.name
    end
    restaurants.uniq
  end

end