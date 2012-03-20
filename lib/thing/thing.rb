require 'thing/thing'
require 'thing/thing_property'

class Thing
  class << self
    def properties
      @properties ||= []
    end

    def maintains(*args)
      args.each do |p|
        properties << ThingProperty.new(p)
        attr_accessor p
      end
    end
  end

  def initialize

  end

  def properties
    self.class.properties
  end
end