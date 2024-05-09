$:.push File.expand_path("../lib", __FILE__)

require "lines/version"
require 'date'

Gem::Specification.new do |s|
  s.name        = "lines-engine"
  s.version     = Lines::VERSION
  s.authors     = ["Jochen Greif"]
  s.email       = ["lines@jochengreif.de"]
  s.homepage    = "http://lines.opoloo.com"
  s.summary     = "LINES is the open source blog platform you have been waiting for"
  s.description = "LINES lets you manage your posts in a clear, consistent frontend. The gracefully slender editor keeps your editing simple and lets you just splash around in your ideas. Once you're happy, just hit publish and see your text, code examples, images, and links shine."
  s.license     = "LGPL-3.0"
  s.date        = Date.today.to_s
  s.required_ruby_version = '>= 3.1'
  s.cert_chain  = ['certs/lines-engine.pem']
  s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/


  s.add_runtime_dependency 'orm_adapter'
  s.add_runtime_dependency 'thread_safe'
  s.add_runtime_dependency 'railties'
  s.add_runtime_dependency 'rmagick'
  s.add_runtime_dependency 'thor'
  s.add_runtime_dependency 'carrierwave'
  s.add_runtime_dependency 'kaminari'
  s.add_runtime_dependency 'pygments.rb'
  s.add_runtime_dependency 'redcarpet'
  s.add_runtime_dependency 'jquery-rails'
  s.add_runtime_dependency 'acts-as-taggable-on'
  s.add_runtime_dependency 'bcrypt', '~> 3.1.0'
  s.add_runtime_dependency 'sitemap_generator'
  s.add_runtime_dependency 'jquery-fileupload-rails'
  s.add_runtime_dependency 'jquery-ui-rails'
  s.add_runtime_dependency 'sanitize'
  s.add_runtime_dependency 'sass-rails'
  s.add_runtime_dependency 'coffee-rails'
  s.add_runtime_dependency 'uglifier'
  s.add_runtime_dependency 'friendly_id'
  s.add_runtime_dependency 'rails3-jquery-autocomplete'
  s.add_runtime_dependency 'meta-tags'
  s.add_runtime_dependency 'i18n'
  s.add_runtime_dependency 'sprockets-rails'
  s.add_runtime_dependency 'rails'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec'

  s.files         = `git ls-files`.split("\n").select{ |file_name| !(file_name =~ /^spec/) }
  s.test_files    = `git ls-files`.split("\n").select{ |file_name| (file_name =~ /^spec/) }
  s.executables   = s.executables   = s.files.grep(%r{^bin/}) do |f|
    f == 'bin/rails' ? nil : File.basename(f)
  end.compact
  s.require_paths = ["lib"]

end
