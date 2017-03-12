# Envyml

Load environment yaml file into ENV ruby hash

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'envyml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install envyml

## Usage

Create file `YOUR_PROJECT/config/env.yml`, with:
```
  development:
    key: VALUE
```

Call `Envyml.load` to insert env.yml into ENV ruby hash.

By default:
  - It will load from YOUR_PROJECT/config/env.yml
  - It will use ENV['RAILS_ENV'] to determine the environment
  - If you are not using Rails it won't use environments, so leave only
    one environment section in env.yml, or it will raise
    `TypeError Exception: no implicit conversion of Hash into String`

*Custom calls*
`Envyml.load('lib', 'test')`;
`Envyml.load('lib')`

## Testing and Contributing

Make sure the tests are passing: `rake test`
Feel free to send me pull requests

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

