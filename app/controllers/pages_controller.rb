class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @talks = Talk.all
  end

  def myprofile
  end
end
