class RestrictedController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def restricted
  end
end
