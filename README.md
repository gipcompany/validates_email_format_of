validates_email_format_of
======================

A plugin for validate format of email and blacklist some domains.

Installation
------------

Include the gem in your Gemfile:

    gem 'validates_email_format_of', :git => 'https://github.com/eviljojo22/validates_email_format_of'


Usage
-----

In your model:
	
	class User < ActiveRecord::Base
		validates :email, :email => true
	end

Or

	class User < ActiveRecord::Base
		validates_email_format_of :email
	end
	
For blacklist some domains:

	EmailValidator.blacklist_domains = ['yopmail.com', 'jetable.org']