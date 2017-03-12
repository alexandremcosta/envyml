require 'envyml/version'
require 'yaml'

module Envyml
  def self.load(path = "#{ENV['PWD']}/config/env.yml", environment = ENV['RAILS_ENV'])
    if File.exist?(path)
      data = YAML.load_file(path)

      if environment
        data = data[environment] || {}
      end

      data.each do |key, value|
        ENV[key] = value
      end

      data
    end
  end
end
