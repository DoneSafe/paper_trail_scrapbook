# frozen_string_literal: true

require File.expand_path('lib/paper_trail_scrapbook/version', __dir__)

Gem::Specification.new do |gem|
  gem.name        = 'paper_trail_scrapbook'
  gem.version     = PaperTrailScrapbook::VERSION.dup
  gem.summary     = 'Paper Trail Scrapbook'
  gem.description = "Human Readable Change Log for Paper Trail'd data"
  gem.authors     = ['Timothy Chambers']
  gem.email       = 'tim@hint.io'
  gem.files       = `git ls-files`.split("\n")
  gem.homepage    = 'https://github.com/hintmedia/paper_trail_scrapbook'
  gem.license     = 'MIT'

  gem.required_rubygems_version = '>= 1.3.6'
  gem.required_ruby_version = '>= 3.2'

  # Rails does not follow semver, makes breaking changes in minor versions.
  gem.add_dependency 'activerecord'
  gem.add_dependency 'adamantium'
  gem.add_dependency 'concord'
  gem.add_dependency 'paper_trail', ['>= 11', '< 18']

  gem.metadata['rubygems_mfa_required'] = 'true'
end
