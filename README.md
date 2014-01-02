# Diffbot

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'diffbot'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install diffbot

## Usage

```rb
	article = Diffbot::Article.fetch({ url: "http://en.wikipedia.org/wiki/Egypt", token: "abc" }
	article.icon # => "http://bits.wikimedia.org/apple-touch/wikipedia.png"
	article.title # => "Egypt"
	article.type # => "article"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
