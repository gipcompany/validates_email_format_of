class EmailValidator < ActiveModel::EachValidator
	@@blacklist_domains = []
	cattr_accessor :blacklist_domains

  def validate_each(record, attribute, value)
    if (value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i).nil? || (blacklist_domains.size > 0 && (value =~ /#{blacklist_domains.join('|')}$/))
      record.errors[attribute] << (options[:message] || I18n.t('errors.messages.not_an_email'))
    end
  end
	
end
