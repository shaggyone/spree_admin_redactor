Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_admin_redactor'
  s.version     = '0.1.1'
  s.summary     = '[Spree-0.30+] replaces certain textareas at spree administrator inteface with imperavi-redactor 6.1.1+'
  s.description = s.summary
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'originally by x@ES fork by shaggyone latter'
  s.email             = 'KEIvanov@gmail.com'
  s.homepage          = 'https://github.com/shaggyone/spree_admin_redactor'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['README.rdoc', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.30.1'
  s.add_dependency 'paperclip',  '>= 2.3.6'
  s.add_dependency 'haml'
  s.add_dependency 'will_paginate'
end
