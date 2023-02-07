class Admin::BaseController < ApplicationController
	before_action :check_user
  before_action :authenticate_user!

   private

    def check_user
      if user_signed_in? && current_user.admin?
        redirect_to "members#index"
      end
    end
end
