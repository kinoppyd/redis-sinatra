# Redis stores for Mobb

__`mobb-redis`__ provides a Redis backed cache store for __Mobb__. See the main [redis-store readme](https://github.com/redis-store/redis-store) for general guidelines.

## Installation

```ruby
# Gemfile
gem 'mobb-redis'
```

## Usage

```ruby
require 'mobb'
require 'mobb-redis'

class MyApp < Mobb::Base
  register Mobb::Cache

  on 'hi' do
    settings.cache.fetch('greet') { 'Hello, World!' }
  end
end
```

Keep in mind that the above fetch will return `"OK"` on success, not the return of the block.

## Running tests

```ruby
gem install bundler
git clone https://github.com/kinoppyd/mobb-redis
cd mobb-redis
bundle install
bundle exec rake
```

If you are on **Snow Leopard** you have to run `env ARCHFLAGS="-arch x86_64" bundle exec rake`

## Copyright

Original
2009 - 2013 Luca Guidi - [http://lucaguidi.com](http://lucaguidi.com), released under the MIT license]

Modify
kinoppyd
