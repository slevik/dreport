class PrModulesController < ApplicationController
  skip_before_action :http_basic_authenticate
  http_basic_authenticate_with :name => "qa", :password => "123"

  def create
    @pr_module = PrModule.new(pr_module_params)

    if @pr_module.save!
      redirect_to "/qa/projects"
    else
  	  render controller: "qa", action: "projects"
  	end
  end

  def destroy
  	@pr_module = PrModule.find(params[:id])
  	@pr_module.destroy!

  	redirect_to "/qa/projects"
  end

  def sort
    params[:pr_module].each_with_index do |id, index|
      PrModule.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end

  private

    def pr_module_params
      params.require(:pr_module).permit(:name, :project_id, :is_api, :is_ui)
    end
end
