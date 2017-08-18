class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  before_filter :set_nav
  def set_nav
    @bigsorts = Bigsort.all
    @smallsorts = Smallsort.all
  end
end
