class Person < ActiveRecord::Base

  enum status: { created: 0, emailed: 1}

  validates :name, :phone, :email, presence: true
  validates :phone, :email, uniqueness: true	
	
  FIELDS = {email_fields: ["name", "phone", "email", "description"]}

  def email_details
	self.attributes.select{|k,v| FIELDS[:email_fields].include?(k)}
  end			

end
