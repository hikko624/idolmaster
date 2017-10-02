require 'yaml'

require "idolmaster/version"

module Idolmaster
  # Your code goes here...
  def self.hello
    @hello = 'Hello Idol!'
  end
  def config
    @config = YAML.load_file  ("#{File.expand_path('./', __dir__)}/config/idols.yml")
  end

  def self.data
    puts @config
  end
end

