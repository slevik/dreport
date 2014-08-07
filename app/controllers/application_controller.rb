class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # http_basic_authenticate_with :name => "123", :password => "123"
  before_action :http_basic_authenticate

  before_filter :get_users
  before_filter :get_projects

  def http_basic_authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == '123' && password == '123'
    end
  end

  def get_users
    @users = Users.all(:limit => 100)
  end

  def get_projects
    @projects = Project.all(:limit => 100)
  end

  def get_project_pr_modules
    @project_pr_modules = ProjectPrModule.all.order("created_at DESC").limit(100)
  end

  def get_latest_bugs
    @bugs = Bugs.all(:order => 'date DESC, user ASC, project ASC', :limit => 1000)
  end
end
