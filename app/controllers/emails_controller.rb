class EmailsController < ApplicationController

	def index

	end

	def new 
		@email = Email.new
	end

	def create 
		@email = Email.new(params[:email])
		@email.save
	end

end
