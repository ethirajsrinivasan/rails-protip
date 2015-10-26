# Rails::Protip

rails-protip is tooltip gem based on jquery protip plugin
TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-protip'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rails-protip

To use this gem add this require statement to your application.js file:

    //= require protip

and in application.css file as follows 

	*= require protip

## Usage

	<%= link_to "Go to the bar!","#bar", class: "protip", "data-pt-title"=> "You must be at least 18!"%>

You can also set default configuration in protip.yml under config folder, example

	scheme: "orange"
	skin: "square"

Support for animation is also provided, example

	<div class="protip" data-pt-animate="infinite bounce" data-pt-title="You must be at least 18!">Go to the bar!</div> 	

For further usage check http://protip.rocks	
	    
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ethirajsrinivasan/rails-protip.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

