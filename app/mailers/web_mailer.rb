class WebMailer < ApplicationMailer

	def contacted_us(person)
		@person = person
		mail(to: "traveltheglobeforfree@gmail.com,vel.dhanabal@gmail.com", subject: "Contacted us to travel the globe!")
	end
end
