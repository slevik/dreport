class AddDateToProjectPrModule < ActiveRecord::Migration
  def change
  	remove_column :project_pr_modules, :date
  	add_column :project_pr_modules, :date, :string
  end
end
