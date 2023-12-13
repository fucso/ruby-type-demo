require 'sorbet-runtime'

class Vehicle
  extend T::Sig

  sig { returns(String) }
  attr_accessor :model

  sig { params(model: String).void }
  def initialize(model)
    @model = model
  end
end