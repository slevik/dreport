class AddModulesToProjectPrModule < ActiveRecord::Migration
  def change
  	remove_column :project_pr_modules, :module_id
  	add_column :project_pr_modules, :modules, :string
  end
end
