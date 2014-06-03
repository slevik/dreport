class ListController < ApplicationController

  before_filter :get_latest_bugs

  def index
   #Rails.logger.info "#{request.env['HTTP_X_REAL_IP']} - #{request.remote_ip}"
    @username = cookies[:username] if cookies[:username]
  end
end
