# typed: true
class Person
  extend T::Sig

  sig { returns(String) }
  attr_accessor :name, :email
  
  sig { returns(Integer) }
  attr_accessor :age
  
  sig { returns(Address) }
  attr_accessor :address

  sig { returns(T::Array[Address]) }
  attr_reader :address_history

  sig { returns(T::Array[Vehicle]) }
  attr_reader :vehicles

  sig { params(name: String, age: Integer, email: String, address: Address).void }
  def initialize(name, age, email, address)
    @name = name
    @age = age
    @email = email
    @address = address
    @address_history = [address]
    @vehicles = []
  end

  sig { params(new_address: Address).void }
  def move_to(new_address)
    @address = new_address
    @address_history << new_address
  end

  sig { params(vehicle: Vehicle).void }
  def buy_vehicle(vehicle)
    @vehicles << vehicle
  end

  sig { returns(String) }
  def to_s
    "名前：#{@name}, 年齢：#{@age}, メール：#{@email}
住所：
  #{@address_history.join("\n  ")}
"
  end
end