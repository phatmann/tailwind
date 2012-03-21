module Tailwind
  class Property
    attr_accessor :name
    attr_accessor :required

    def initialize(name, opts = {})
      @name = name

      if opts.is_a?(Hash)
        @required = opts[:required]
      end
    end
  end
end