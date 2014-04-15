class EmailsController < ApplicationController

	def index

	end

	def new 
		@email = Email.new
	end

	def create 
		@email = Email.new(params[:email].permit(:content))
		@email.save
		# ({
		# 	content: params[:content]

		# 	})
			redirect_to '/'
		
	end


	private

	def email_params
		params.require(:email).permit(:content)
	end

end
