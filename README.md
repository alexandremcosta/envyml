# Envyml

Loads environment YAML file into
[ENV](https://ruby-doc.org/core-2.2.0/ENV.html) ruby hash.
Minimalistic approach. The goal is to keep less than 50 LOC forever.

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
  key: VALUE
```

Call `Envyml.load` to insert this file into ENV ruby hash.
*Don't forget to add config/env.yml to gitignore!*

## Rails
If you are using Rails or just wants to separate your keys,
add environment sections to your file:
```
  development:
    FOO: bar
    KEY: value

  test:
    FOO: bar
    KEY: value
```


## Custom calls
You can customize filename, hardcode environment and much more.
Check /lib/envyml.rb to understand your options.

```
  Envyml.load('lib/my_file.yml', 'test')
  Envyml.load('lib/my_file.yml')
```

If you use Rails, but wish to force use without environments
```
  Envyml.load('lib/my_file.yml', false)
```

## Testing and Contributing

Make sure the tests are passing: `rake test`
Feel free to send pull requests

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

