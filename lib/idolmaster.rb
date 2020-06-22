require 'idolmaster/idol'
require 'idolmaster/core'
require "idolmaster/version"

module Idolmaster
  def self.method_missing(name, *args)
    Rubimas::Core.instance.send(name, *args)
  end
end
