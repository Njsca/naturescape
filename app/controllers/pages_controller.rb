class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index uikit]

  def home
  end

  def uikit
  end
end
