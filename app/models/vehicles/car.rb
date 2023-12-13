require 'sorbet-runtime'
require_relative '../vehicle.rb'

class Car < Vehicle
  extend T::Sig

  sig { returns(Integer) }
  attr_accessor :number_of_doors

  sig { params(model: String, number_of_doors: Integer).void }
  def initialize(model, number_of_doors)
    super(model)
    @number_of_doors = number_of_doors
  end

  sig { returns(String) }
  def to_s
    "type: Car, model: #{@model}, doors: #{@number_of_doors}"
  end
end