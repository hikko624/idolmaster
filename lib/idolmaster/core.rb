require 'json'
require 'singleton'

module Rubimas
  class Core
    include Singleton

    # def initialize(**args)
    # end

    Rubimas::Idol.names.each do |name|
      define_method name do
        Rubimas::Idol.find(name)
      end
    end

    def method_missing(name, *args)
      original = Rubimas::Idol.find(:original)
      return original.send(name, *args) if original.respond_to?(name)

      super
    end

    def respond_to_missing?(name, *args)
      original = Rubimas::Idol.find(name)
      original.respond_to?(name)
    end
  end
end
