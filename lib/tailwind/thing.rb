require_relative 'property'

module Tailwind
  class Thing
    class << self
      def maintains(*args)
        args.each do |p|
          properties << Property.new(p)
          attr_accessor p
        end
      end

      def properties
        @properties ||= []
      end
    end
  end
end