# frozen_string_literal: true

source "https://rubygems.org"

gem "jekyll-theme-chirpy", "~> 5.3", ">= 5.3.1"

group :test do
  gem "html-proofer", "~> 5.0"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", "~> 2.0"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?
gem 'faraday-retry', '~> 2.0'

# Jekyll <= 4.2.0 compatibility with Ruby 3.0
gem "webrick", "~> 1.7"

# Extended features
# gem 'jekyll-seo-tag'  
gem 'jekyll-target-blank'
gem 'jekyll-sitemap'
gem 'jekyll-paginate'
gem 'jekyll-gist'
gem 'jekyll-feed'
gem 'jemoji'
gem 'jekyll-include-cache'
gem 'jekyll-compose', group: [:jekyll_plugins]
gem 'thor'
gem 'stringex'
gem 'jekyll_picture_tag', '~> 2.0'
gem 'jekyll-loading-lazy'

# gem 'jekyll-compress-images'  # not need as 'Imgbot' installed in the repo
# gem 'amp-jekyll', '~> 1.0', '>= 1.0.2'

group :jekyll_plugins do
  gem 'jekyll-gzip'
  gem 'jekyll-seo-tag'
end
