class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :uikit, :profile ]

  def home
  end

  def uikit
  end

  def profile
  end

end
