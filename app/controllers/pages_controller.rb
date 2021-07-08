class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @talks = Talk.all.first(9)
  end

  



end
