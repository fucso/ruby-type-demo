# typed: true
require 'sorbet-runtime'

class Address
  extend T::Sig

  sig { returns(String) }
  attr_accessor :street, :city, :postal_code

  sig { params(street: String, city: String, postal_code: String).void }
  def initialize(street, city, postal_code)
    @street = street
    @city = city
    @postal_code = postal_code
  end

  sig { returns(String) }
  def to_s
    "住所：#{@street}, 市町村：#{@city}, 郵便番号：#{@postal_code}"
  end
end