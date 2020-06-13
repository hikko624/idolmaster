# Idolmaster

![Ruby](https://github.com/hikko624/idolmaster/workflows/Ruby/badge.svg)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/idolmaster`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'idolmaster'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install idolmaster

## Usage

```ruby
Idolmaster.find(:cinderella_girls).count
=> 190

Idolmaster.find(:cinderella_girls).first
=> [{:id=>1, :name=>"相川千夏", :kana=>"あいかわちなつ", :height=>"161cm", :weight=>"43kg", :size=>"82/56/85", :birth=>"11月11日", :age=>"23歳", :blood=>"B型", :type=>"cool", :from=>"北海道", :cv=>""}

Idolmaster.cinderella_girls.first
=> [{:id=>1, :name=>"相川千夏", :kana=>"あいかわちなつ", :height=>"161cm", :weight=>"43kg", :size=>"82/56/85", :birth=>"11月11日", :age=>"23歳", :blood=>"B型", :type=>"cool", :from=>"北海道", :cv=>""}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/idolmaster. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Idolmaster project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/idolmaster/blob/master/CODE_OF_CONDUCT.md).
