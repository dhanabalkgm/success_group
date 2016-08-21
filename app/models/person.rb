class Person < ActiveRecord::Base
	
  FIELDS = {email_fields: ["name", "phone", "email", "description"]}

  def email_details
	self.attributes.select{|k,v| FIELDS[:email_fields].include?(k)}
  end			

end
