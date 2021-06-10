class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if user_signed_in?
      if current_user.definition.present?
        @definition = current_user.definition
      else
        @definition = Definition.new
      end
    else
      @definition = Definition.new
    end
  end
end
