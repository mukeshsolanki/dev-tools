# Devtools

A gem that removes the hassle of setting up your machine every time you change to a new development device. DevTools is simple and easy to use it lets you setup your development environment with easy.

## Installation

Open Terminal and execute the following command

```ruby
gem install dev-tools
```

## Usage

Its pretty simple how this works. Fire up terminal and execute `dev-tools` with one of the following options.

```shell
Usage: dev-tools [options]
    -i, --install APP_NAME           The flag used to indicate the tool that needs to be installed.
    -e, --environment ENVIRONMENT    Path to the file that contains the information about the development environment to setup.
    -l, --list                       Displays a list of apps that can be installed.
```

## Sample environment file

```yml
Apps:
  vlc
  sublime
Environment:
  ruby-on-rails
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mukeshsolanki/dev-tools. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
