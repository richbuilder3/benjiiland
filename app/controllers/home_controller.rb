class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to edit_user_registration_path
    end
  end

  def success
  end
end
