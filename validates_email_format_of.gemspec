# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
	s.files = `git ls-files`.split("\n")
	s.name = "validates_email_format_of"
	s.platform = Gem::Platform::RUBY
	s.summary = "A plugin for validate format of email and blacklist or whitelist some domains."
	s.homepage = "https://github.com/jonathantribouharet/validates_email_format_of"
	s.require_paths = ["lib"]
	s.version = "1.0"
	s.author = "Jonathan TRIBOUHARET"
	s.email = "jonathan.tribouharet@gmail.com"
end