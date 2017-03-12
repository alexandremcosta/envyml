require 'envyml/version'
require 'yaml'

module Envyml
  def self.load(path = "#{ENV['PWD']}/config/env.yml", environment = ENV['RAILS_ENV'])
    data = YAML.load_file(path)
    data = data[environment] if environment

    data.each do |key, value|
      ENV[key] = value
    end if File.exist?(path)
  end
end
