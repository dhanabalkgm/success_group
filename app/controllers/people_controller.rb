class PeopleController < ApplicationController
	def create
		@person = Person.new person_params
		if @person.save
		  WebMailer.contacted_us(@person).deliver
		  @person.emailed!		
		  render nothing: true, status: 200	
		else
		  raise "some error"			
		end
	end

	private

	def person_params
		params.permit(:name, :phone, :email, :description)
	end	
end