require 'envyml/version'
require 'yaml'

module Envyml
  def self.load(path = "#{ENV['PWD']}/config/env.yml", env = (Rails.env if defined?(Rails)))
    if File.exist?(path)
      data = YAML.load_file(path)
      data = (data[env] || {}) if env
      data.each { |k, v| ENV[k] = v }
      data
    end
  end
end
