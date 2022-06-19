# GemWithCExtension

This is an example for a simple Ruby Gem with C-Extension.

## Steps used to create this gem:


General info on how to [generate a Ruby gem](https://bundler.io/guides/creating_gem.html)


`gem update bundler`

`bundle gem --help`

`bundle gem gem_with_c_extension --ext --mit --test=rspec --ci=github --linter=rubocop --edit=subl`


```
Initializing git repo in /Users/tilo/GitHub/gem_with_c_extension
      create  gem_with_c_extension/Gemfile
      create  gem_with_c_extension/lib/gem_with_c_extension.rb
      create  gem_with_c_extension/lib/gem_with_c_extension/version.rb
      create  gem_with_c_extension/sig/gem_with_c_extension.rbs
      create  gem_with_c_extension/gem_with_c_extension.gemspec
      create  gem_with_c_extension/Rakefile
      create  gem_with_c_extension/README.md
      create  gem_with_c_extension/bin/console
      create  gem_with_c_extension/bin/setup
      create  gem_with_c_extension/.gitignore
      create  gem_with_c_extension/.rspec
      create  gem_with_c_extension/spec/spec_helper.rb
      create  gem_with_c_extension/spec/gem_with_c_extension_spec.rb
      create  gem_with_c_extension/.github/workflows/main.yml
      create  gem_with_c_extension/LICENSE.txt
      create  gem_with_c_extension/CODE_OF_CONDUCT.md
      create  gem_with_c_extension/CHANGELOG.md
      create  gem_with_c_extension/.rubocop.yml
      create  gem_with_c_extension/ext/gem_with_c_extension/extconf.rb
      create  gem_with_c_extension/ext/gem_with_c_extension/gem_with_c_extension.h
      create  gem_with_c_extension/ext/gem_with_c_extension/gem_with_c_extension.c
         run  subl "/Users/tilo/GitHub/gem_with_c_extension/gem_with_c_extension.gemspec" from "."
Gem 'gem_with_c_extension' was successfully created. For more information on making a RubyGem visit https://bundler.io/guides/creating_gem.html
```

`cd gem_with_c_extension`

open it with your editor

and edit the following files to add the C-extension and its use:

edit gemspec

edit ext/gem_with_c_extension/gem_with_c_extension.c

edit ext/gem_with_c_extension/gem_with_c_extension.h

edit lib/gem_with_c_extension.rb

edit lib/gem_with_c_extension/version.rb

edit spec/gem_with_c_extension_spec.rb

bundle install 

rake

rake build

rake install 

rake release


## References:

https://www.rubyguides.com/2018/03/write-ruby-c-extension/

https://rubyreferences.github.io/rubyref/advanced/extensions.html

https://silverhammermba.github.io/emberb/c/#string




## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add gem_with_c_extension

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install gem_with_c_extension

## Usage

```
    require "gem_with_c_extension"

    GemWithCExtension.hello('Mark')
    => Hello Mark, name length: 4
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gem_with_c_extension. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/gem_with_c_extension/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GemWithCExtension project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/gem_with_c_extension/blob/main/CODE_OF_CONDUCT.md).
