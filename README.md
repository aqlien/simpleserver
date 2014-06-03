# Simpleserver

A very simple web server, able to find html files located in the same directory from its run location.

## Installation

Add this line to your application's Gemfile:

    gem 'simpleserver'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simpleserver

## Usage

After installation, run `$ simpleserver` from the directory where the html files you want to serve are located. Then, in your web browser, navigate to your IP at the port the webserver is set to (the defaut is 1337). Then, simply append the path to the file you want after the backslash.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/simpleserver/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
