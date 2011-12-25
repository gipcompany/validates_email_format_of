module ActiveRecord; module Acts; end; end
module ActiveRecord::Acts::ValidatesFormatEmailOf
  
  def self.included(klass)
		klass.class_eval do
			extend(ClassMethods)
		end
  end
	
  module ClassMethods
		def validates_email_format_of(*attr_names)
			validates_with EmailValidator, _merge_attributes(attr_names)
		end
	end	

end

ActiveRecord::Base.send(:include, ActiveRecord::Acts::ValidatesFormatEmailOf)
