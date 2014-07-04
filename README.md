# Logger::Application

[![Gem Version](https://badge.fury.io/rb/logger-application.png)](http://badge.fury.io/rb/logger-application)
[![Build Status](https://secure.travis-ci.org/hsbt/logger-application.png)](http://travis-ci.org/hsbt/logger-application)

## Description

Add logging support to your application.

## Installation

Add this line to your application's Gemfile:

    gem 'logger-application'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logger-application

## Usage

 1. Define your application class as a sub-class of this class.
 2. Override the +run+ method in your class to do many things.
 3. Instantiate it and invoke #start.

## Example

```ruby
class FooApp < Logger::Application
  def initialize(foo_app, application_specific, arguments)
    super('FooApp') # Name of the application.
  end

  def run
    ...
    log(WARN, 'warning', 'my_method1')
    ...
    @log.error('my_method2') { 'Error!' }
    ...
  end
end

status = FooApp.new(....).start
```

## Contributing

1. Fork it ( https://github.com/hsbt/logger-application/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
