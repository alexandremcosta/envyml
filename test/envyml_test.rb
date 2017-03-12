require 'test_helper'

class EnvymlTest < Minitest::Test
  def test_it_loads_env
    Envyml.load("#{__dir__}/config/env_rails.yml", 'test')
    assert_equal 'bar', ENV['FOO']
  end

  def test_it_loads_defaults
    ENV['PWD'] = __dir__.to_s
    Envyml.load
    assert_equal 'bar', ENV['FOO']
  end

  def test_it_uses_rails_env_if_present
    ENV['RAILS_ENV'] = 'test'
    Envyml.load("#{__dir__}/config/env_rails.yml")
    assert_equal 'bar', ENV['FOO']
  end

  def test_it_does_not_fail_on_invalid_environment
    assert Envyml.load("#{__dir__}/config/env_rails.yml", 'production')
    assert Envyml.load("#{__dir__}/config/env_rails.yml", 'development')
  end
end
