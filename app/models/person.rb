# typed: true
class Person
  extend T::Sig

  sig { returns(String) }
  attr_accessor :name, :email
  
  sig { returns(Integer) }
  attr_accessor :age
  
  sig { returns(Address) }
  attr_accessor :address

  sig { params(name: String, age: Integer, email: String, address: Address).void }
  def initialize(name, age, email, address)
    @name = name
    @age = age
    @email = email
    @address = address
  end

  sig { params(new_address: Address).void }
  def move_to(new_address)
    @address = new_address
  end

  sig { returns(String) }
  def to_s
    "名前：#{@name}, 年齢：#{@age}, メール：#{@email}, 住所：#{@address}"
  end
end