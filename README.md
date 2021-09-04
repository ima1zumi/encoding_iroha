# EncodingIroha

EncodingIroha is a sample gem for adding your self-made encoding.

## Installation

```ruby
gem 'encoding_iroha'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install encoding_iroha

## Usage

```ruby
p 'いろは'.encode(Encoding::IROHA)
# => "\x80\x81\x82"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/encoding_iroha. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/encoding_iroha/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EncodingIroha project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/encoding_iroha/blob/main/CODE_OF_CONDUCT.md).

## Acknowledgements

- I have copied some files from https://github.com/ruby/ruby to call private API.
- @osyo-manga
