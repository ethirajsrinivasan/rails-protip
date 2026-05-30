# Rails::Protip

[![CI](https://github.com/ethirajsrinivasan/rails-protip/actions/workflows/ci.yml/badge.svg)](https://github.com/ethirajsrinivasan/rails-protip/actions/workflows/ci.yml)
[![Gem Version](https://badge.fury.io/rb/rails-protip.svg)](https://badge.fury.io/rb/rails-protip)

Tooltip gem based on the jQuery Protip plugin

## Requirements

- Ruby >= 3.0
- Rails >= 6.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-protip'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rails-protip

### Asset Pipeline Setup

**For Rails 6.x / 7.x with Sprockets:**

Add this require statement to your `application.js` file:

```javascript
//= require protip
```

And in your `application.css` file:

```css
*= require protip
```

**For Rails 7+ with Import Maps:**

Add to your `config/importmap.rb`:

```ruby
pin "protip", to: "protip.js"
```

Then import in your `application.js`:

```javascript
import "protip"
```

**For Rails with Webpacker/Shakapacker:**

The gem works with the asset pipeline. If using Webpacker, you may need to configure it to load from the gem's assets directory.

**Note:** This gem requires jQuery. Make sure jQuery is loaded before protip.

## Usage

```erb
<%= link_to "Go to the bar!", "#bar", class: "protip", "data-pt-title" => "You must be at least 18!" %>
```

You can also set default configuration in `protip.yml` under the config folder, example:

```yaml
scheme: "orange"
skin: "square"
```

Support for animation is also provided, example:

```html
<div class="protip" data-pt-animate="infinite bounce" data-pt-title="You must be at least 18!">Go to the bar!</div>
```

For further usage check http://protip.rocks

## Upgrading from 0.x to 1.0

Version 1.0.0 introduces breaking changes to support modern Ruby and Rails versions:

### Breaking Changes

- **Ruby**: Minimum version increased from 1.9.3 to 3.0
- **Rails**: Minimum version increased to 6.0

### Migration Steps

1. Ensure your application is running Ruby 3.0+ and Rails 6.0+
2. Update your Gemfile: `gem 'rails-protip', '~> 1.0'`
3. Run `bundle update rails-protip`
4. If using Rails 7+ with Import Maps, follow the new installation instructions above
5. Test your tooltips to ensure they still work as expected

See [UPGRADE_GUIDE.md](UPGRADE_GUIDE.md) for detailed migration instructions.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ethirajsrinivasan/rails-protip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](CODE_OF_CONDUCT.md) code of conduct.

## Thanks

Thanks to the [Protip](http://protip.rocks) project for the original jQuery tooltip plugin.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
