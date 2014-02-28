# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'jquery/fileupload/rails/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'jquery-fileupload-rails'
  s.version     = JQuery::FileUpload::Rails::VERSION
  s.author      = 'Tors Dalid'
  s.email       = 'cletedalid@gmail.com'
  s.homepage    = 'https://github.com/tors/jquery-fileupload-rails'
  s.summary     = %q{jQuery File Upload for Rails 3 and 4 Asset Pipeline}
  s.description = %q{jQuery File Upload by Sebastian Tschan integrated for Rails 3 and 4 Asset Pipeline}

  s.required_ruby_version = '>= 1.9.3'
  s.rubyforge_project     = 'jquery-fileupload-rails'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_path = 'lib'

  s.add_runtime_dependency     'railties', '>= 3.1'
  s.add_runtime_dependency     'actionpack', '>= 3.1'
  s.add_development_dependency 'rails', '>= 3.1'
end
