require_relative 'property'

module Tailwind
  class Thing
    class << self
      def properties
        @properties ||= []
      end

      def maintains(*args)
        args.each do |p|
          properties << Property.new(p)
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
end