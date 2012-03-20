class ThingProperty
  attr_accessor :name
  attr_accessor :required

  def initialize(name)
    self.name = name
  end
end