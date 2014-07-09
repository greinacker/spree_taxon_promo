# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_taxon_promo'
  s.version     = '2.1.0'
  s.summary     = 'A promotion that can be applied to products in a specific taxon'
  s.description = ''
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Acid Labs'
  s.email     = 'alexander@acid.cl'
  s.homepage  = 'http://www.acid.cl'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.1.0'

end
