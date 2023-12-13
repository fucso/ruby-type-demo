require_relative 'models/address.rb'
require_relative 'models/person.rb'
require_relative 'models/vehicles/car.rb'
require_relative 'models/vehicles/truck.rb'

address = Address.new('123 Main St', 'Anytown', '12345')
person = Person.new('Taro Ruby', 30, 'taro@example.com', address)
puts "引越し前: #{person}"

new_address = Address.new('456 Park Ave', 'New City', '67890')
person.move_to(new_address)

puts "引越し後: #{person}"

car = Car.new('Corolla', 4)
truck = Truck.new('F-150', 1000)

person.buy_vehicle(car)
person.buy_vehicle(truck)
puts "vehicles: #{person.vehicles.map{|v| v.to_s}.join(', ')}"