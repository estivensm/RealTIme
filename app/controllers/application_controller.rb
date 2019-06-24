class ApplicationController < ActionController::Base
	before_action :get_responsive

  private 

  def get_responsive
    @nav =  request.user_agent
  end
end
