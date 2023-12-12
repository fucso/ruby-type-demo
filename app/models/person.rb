class Person
  attr_accessor :name, :age, :email, :address

  def initialize(name, age, email, address)
    @name = name
    @age = age
    @email = email
    @address = address
  end

  def move_to(new_address)
    @address = new_address
  end

  def to_s
    "名前：#{@name}, 年齢：#{@age}, メール：#{@email}, 住所：#{@address}"
  end
end