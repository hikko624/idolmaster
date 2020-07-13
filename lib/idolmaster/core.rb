require 'json'
require 'singleton'

module Rubimas
  class Core
    include Singleton

    Rubimas::Idol.names.each do |name|
      define_method name do
        Rubimas::Idol.find(name)
      end
    end

    def method_missing(name, *args)
      if !args.empty? && name == :find
        return Rubimas::Idol.find(*args) if Rubimas::Idol.names.include?(*args)
      end

      super
    end
  end
end
