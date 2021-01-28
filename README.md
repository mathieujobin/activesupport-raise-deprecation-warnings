# Activesupport::Raise::Deprecation::Warnings

Raise all deprecation warnings.

this gem will monkey patch active support so deprecation warnings raise an error instead.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activesupport-raise-deprecation-warnings'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install activesupport-raise-deprecation-warnings

## Usage

Nothing special to do, run your tests with this gem, it will raise on the first deprecation warning, allowing you to have none.
when you have many, you won't be able to merge this gem and go to production.

when you fix all deprecation warning, you can merge the gem and new deprecation warnings will raise error as you bump gem versions or ruby versions.
you will need to fix those before making a release
forcing you to NEVER have deprecation warnings.

if your code coverage is insufficient though. there is a risk you can encounter software crash in production.

I will probably fix that later, but for today, I don't care.

pull request are welcome. this is POC

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/activesupport-raise-deprecation-warnings.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
