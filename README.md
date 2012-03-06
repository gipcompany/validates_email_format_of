validates_email_format_of
======================

A plugin for validate format of email and blacklist or whitelist some domains.

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
	
For blacklist some domains add in a initializer:

	EmailValidator.blacklist_domains = ['yopmail.com', 'jetable.org']
	EmailValidator.whitelist_domains = ['gmail.com', 'hotmail.com']


I18n support
------------

* `errors.messages.not_an_email_adress` is used for an invalid format
* `errors.messages.not_a_valid_email_adress` is used for an invalid domain
