# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_taxon_promo'
  s.version     = '2.1.0'
  s.summary     = 'A promotion that can be applied to products in a specific taxon'
  s.description = ''
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Greg Reinacker'
  s.email     = 'gregr@rassoc.com'
  s.homepage  = 'http://www.rassoc.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.1.0'

  # s.add_development_dependency 'capybara', '1.0.1'
  # s.add_development_dependency 'factory_girl', '~> 2.6.4'
  # s.add_development_dependency 'ffaker'
  # s.add_development_dependency 'rspec-rails',  '~> 2.9'
  # s.add_development_dependency 'sqlite3'
end
