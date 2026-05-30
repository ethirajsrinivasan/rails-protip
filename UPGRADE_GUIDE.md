# Upgrade Guide: Rails-Protip 0.x to 1.0

## Overview

Rails-Protip 1.0 modernizes the gem to work with current Ruby and Rails versions. This guide will help you upgrade smoothly.

## What Changed

### Version Requirements

| Component | Old Version | New Version | Reason |
|-----------|-------------|-------------|--------|
| Ruby | >= 1.9.3 | >= 3.0 | Ruby 2.7 EOL (March 2023) |
| Rails | (implicit) | >= 6.0 | Modern Rails support |

### New Features

- Support for Rails 6.x, 7.x, and 8.x
- GitHub Actions CI workflow
- Updated documentation for modern asset pipelines
- Import Maps support documentation
- Explicit railties dependency

## Pre-Upgrade Checklist

Before upgrading, ensure:

- [ ] Your application runs Ruby 3.0 or higher
- [ ] Your application runs Rails 6.0 or higher
- [ ] You have a backup or version control
- [ ] Your test suite passes

## Upgrade Steps

### 1. Update Your Gemfile

```ruby
# Old
gem 'rails-protip'

# New
gem 'rails-protip', '~> 1.0'
```

### 2. Install the Updated Gem

```bash
bundle update rails-protip
```

### 3. Update Asset Configuration (if needed)

#### For Sprockets (Rails 6.x / 7.x)

No changes needed if you already have:

```javascript
//= require protip
```

And in your CSS manifest:

```css
*= require protip
```

#### For Import Maps (Rails 7+)

Add to `config/importmap.rb`:

```ruby
pin "protip", to: "protip.js"
```

Import in your `application.js`:

```javascript
import "protip"
```

### 4. Verify jQuery is Loaded

Rails-Protip requires jQuery. Ensure it's loaded before protip:

**Sprockets:**
```javascript
//= require jquery
//= require protip
```

**Import Maps:**
```ruby
# config/importmap.rb
pin "jquery", to: "https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"
pin "protip", to: "protip.js"
```

### 5. Test Your Tooltips

1. Start your Rails server
2. Navigate to pages with protip elements
3. Verify tooltips appear and behave correctly
4. Test custom configurations if you use protip.yml

## Configuration

Your existing `config/protip.yml` configuration file continues to work without changes:

```yaml
scheme: "orange"
skin: "square"
```

## Troubleshooting

### Tooltips Not Appearing

**Issue**: Tooltips don't show up on elements.

**Solutions**:
1. Check browser console for JavaScript errors
2. Verify jQuery is loaded before protip
3. Ensure assets are properly included in your asset pipeline
4. Confirm elements have the `protip` class and `data-pt-title` attribute

### Asset Not Found

**Issue**: `protip.js` not found error.

**Solutions**:
1. Run `bundle exec rails assets:precompile` in production
2. Restart your Rails server in development
3. Clear your browser cache
4. Verify the gem is properly installed: `bundle list | grep rails-protip`

### Import Maps Issues (Rails 7+)

**Issue**: Module not found when using Import Maps.

**Solutions**:
1. Ensure you've added the pin to `config/importmap.rb`
2. Run `bin/importmap pin protip`
3. Check that jQuery is also pinned and imported first

## Rolling Back

If you need to roll back to the previous version:

```ruby
# Gemfile
gem 'rails-protip', '~> 0.1.2'
```

Then run:
```bash
bundle update rails-protip
```

**Note**: Version 0.1.2 only supports older Ruby and Rails versions, which are no longer maintained.

## Getting Help

- **Issues**: [GitHub Issues](https://github.com/ethirajsrinivasan/rails-protip/issues)
- **Security**: Email ethirajsrinivasan@gmail.com for security concerns

## Additional Resources

- [CHANGELOG.md](CHANGELOG.md) - Detailed list of changes
- [README.md](README.md) - Full documentation
- [Ruby Upgrade Guide](https://www.ruby-lang.org/en/downloads/)
- [Rails Upgrade Guide](https://guides.rubyonrails.org/upgrading_ruby_on_rails.html)
