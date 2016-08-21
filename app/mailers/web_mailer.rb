class WebMailer < ApplicationMailer

	def contacted_us(person)
		@person = person
		mail(to: Settings.contact.email, subject: "Contacted us to travel the globe!")
	end
end
