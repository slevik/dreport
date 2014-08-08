class QaController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :http_basic_authenticate
  http_basic_authenticate_with :name => "qa", :password => "123"
  before_filter :get_project_pr_modules
  before_filter :get_modules
  layout 'application'

  def index
  end

  def report
    @username = cookies[:username] if cookies[:username]
    @projectname = cookies[:projectname] if cookies[:projectname]
    @project_pr_module = ProjectPrModule.new
  end

  def projects
    @pr_module = PrModule.new
  end

  def create_project_pr_module
    params.permit!

    cookies[:username] = params[:project_pr_module][:user_id]
    cookies[:projectname] = params[:project_pr_module][:project_id]


    @project_pr_module = ProjectPrModule.new(params[:project_pr_module])
    @project_pr_module.modules = params[:project_pr_module][:modules]

    if @project_pr_module.save
      redirect_to "/qa"
    else
      render "report"
    end
  end

  private

    def get_modules
      @modules = PrModule.all
    end

    def params_project_pr_module
      params.require(:project_pr_module).permit(:project_id, :user_id, 
                                                :status, :date, :change_list_ui,
                                                :change_list_api, :modules)
    end

end