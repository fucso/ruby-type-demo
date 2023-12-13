require 'sorbet-runtime'
require_relative '../vehicle.rb'

class Truck < Vehicle
  extend T::Sig

  sig { returns(Integer) }
  attr_accessor :cargo_capacity

  sig { params(model: String, cargo_capacity: Integer).void }
  def initialize(model, cargo_capacity)
    super(model)
    @cargo_capacity = cargo_capacity
  end

  sig { returns(String) }
  def to_s
    "type: Truck, model: #{@model}, cargo capacity: #{@cargo_capacity}"
  end
end
