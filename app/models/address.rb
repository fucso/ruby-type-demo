class Address
  attr_accessor :street, :city, :postal_code

  def initialize(street, city, postal_code)
    @street = street
    @city = city
    @postal_code = postal_code
  end

  def to_s
    "住所：#{@street}, 市町村：#{@city}, 郵便番号：#{@postal_code}"
  end
end