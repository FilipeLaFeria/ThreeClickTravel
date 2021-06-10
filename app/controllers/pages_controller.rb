class PagesController < ApplicationController
  def home
    if current_user.definition.present?
      @definition = current_user.definition
    else
      @definition = Definition.new
    end
  end
end
