
require_relative 'guest'
require_relative 'reservations'
require_relative 'restaurant'

guest1 = Guest.new('Bill', 'Gates', 2128675309, 'Likes Expensive wine')
guest2 = Guest.new('Steve', 'Jobs', 2125458785, 'Likes Expensive tendies')
guest3 = Guest.new('Anderson', 'Cooper', 2125225865, 'Likes Expensive chocolate')
guest4 = Guest.new('Tina', 'Fey', 2125565885, 'Likes Expensive chicken')
guest5 = Guest.new('Chris', 'Rock', 2125223248, 'Likes Expensive beer')
guest6 = Guest.new('Nina', 'Simone', 2125321558, 'Likes Expensive vodka')
guest7 = Guest.new('Tendie', 'Slayer', 2122265878, 'Friend of the owner')
guest8 = Guest.new('Anita', 'Bath', 2122354855, 'Friend of employee')
guest9 = Guest.new('Nina', 'Cracker', 2122526885, 'Owner')
guest10 = Guest.new('All-Beef', 'Patty', 212225565)

restaurant1 = Restaurant.new('Tri Vingne')
restaurant2 = Restaurant.new('Leuca')
restaurant3 = Restaurant.new('ilili')

reservation1 = Reservation.new('1-1-2020', '6PM', 2, restaurant1, guest1)
reservation2 = Reservation.new('8-5-2020', '7PM', 2, restaurant1, guest2)
reservation3 = Reservation.new('12-12-2020', '8PM', 2, restaurant1, guest3)
reservation4 = Reservation.new('10-1-2020', '8PM', 2, restaurant1, guest4)

