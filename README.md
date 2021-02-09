# Boostrap Icons Rails
[![Gem Version](https://d25lcipzij17d.cloudfront.net/badge.svg?id=rb&type=6&v=1.20.16&x2=0)](https://badge.fury.io/rb/bootstrap_icons_rails)
[![BI version](https://d25lcipzij17d.cloudfront.net/badge.svg?id=gh&type=6&v=1.2.0&x2=0)](https://github.com/NILID/bootstrap_icons_rails/blob/master/lib/bootstrap_icons_rails/version.rb)

**bootstrap_icons_rails** provides the [Bootstrap Icons](https://icons.getbootstrap.com/) web fonts, stylesheets as a Rails engine for use with the asset pipeline.

Keep track of changes in [Changelog](https://github.com/NILID/bootstrap_icons_rails/blob/master/CHANGELOG.md).

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'bootstrap_icons_rails'
```

### Install as SVG with JS
In your `application.css`, include the css file:
```css
 *= require bootstrap_icons
```
or if you prefer scss add this to your `application.scss` file:
```scss
@import 'bootstrap_icons.css'; //application.scss
```

If you're using `.sass` and having problem with loading, try to omit `.css` extenstion and import font as follows:
```scss
@import 'bootstrap_icons';
```
## Usage
Gem provides Bootstrap Icons through helper. In your views just call `bi_icon`.

### Basic usage
```ruby
bi_icon('alarm')
# => <i class="bi bi-alarm"></i>

bi_icon('alarm', style: 'color: Tomato')
# => <i class="bi bi-alarm" style="color:Tomato"></i>

bi_icon('alarm', class: 'my-class', text: 'Alarm')
# => <i class="bi bi-alarm my-class"></i>
# => <span class="bi-text">Alarm</span>

bi_icon(:alarm, text: 'Alarm', right: true)
# => <span class="bi-text-r">Alarm</span>
# => <i class="bi bi-alarm"></i>
```
## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[Bootstrap Icons License](https://github.com/twbs/icons/blob/main/LICENSE.md).

### Buy me a coffee
If you liked this gem, you can
<a href="https://www.buyme1acoffee.com/NILID" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>.