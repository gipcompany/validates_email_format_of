class EmailValidator < ActiveModel::EachValidator
	@@blacklist_domains = []
	@@whitelist_domains = []
	cattr_accessor :blacklist_domains
	cattr_accessor :whitelist_domains

	def validate_each(record, attribute, value)
		return if value.blank?
		value = value.to_s.downcase
		unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
			record.errors[attribute] << (options[:message] || I18n.t('errors.messages.not_an_email_adress'))
		end
		if (blacklist_domains.size > 0 && (value =~ /#{blacklist_domains.join('|')}$/))
			record.errors[attribute] << (options[:message] || I18n.t('errors.messages.not_a_valid_email_adress'))
		end
		if (whitelist_domains.size > 0 && !(value =~ /#{whitelist_domains.join('|')}$/))
			record.errors[attribute] << (options[:message] || I18n.t('errors.messages.not_a_valid_email_adress'))
		end		
	end
	
end
