module ActiveRecord; module Acts; end; end
module ActiveRecord::Acts::ValidatesFormatEmailOf
  
  def self.included(base)
		base.extend(ClassMethods)
  end
	
  module ClassMethods
		def validates_email_format_of(*attr_names)
			validates_with EmailValidator, _merge_attributes(attr_names)
		end
	end	

end

ActiveRecord::Base.send(:include, ActiveRecord::Acts::ValidatesFormatEmailOf)
