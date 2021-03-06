module Rubimas
  class Idol

    Dir.open("#{File.dirname(__FILE__)}/../../config/idols/").each do |file|
      next if file =~ /^\.+$/
      name = File.basename(file, ".*").to_sym
      define_method name do
        Rubimas::Idol.find(name)
      end
    end

    # puts "Hey! P-sama! mettya yamu!!!"
    class << self
      def find(production_name)
        raise 'Not Found Production' unless valid?(production_name)

        config[production_name]
      end

      def config
        config = {}
        Dir.open("#{File.dirname(__FILE__)}/../../config/idols/").each do |file|
          next if file =~ /^\.+$/

          idols = File.open("#{File.dirname(__FILE__)}/../../config/idols/" + file) do |json|
            JSON.parse(JSON.load(json).to_json, symbolize_names: true)
          end
          name = File.basename(file, ".*").to_sym
          config[name] = idols
        end

        config
      end

      def valid?(production_name)
        names.include?(production_name)
      end

      def names
        config.keys
      end
    end
  end
end
