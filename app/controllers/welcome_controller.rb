class WelcomeController < ApplicationController
  def index
  	@person = Person.new
  end
end