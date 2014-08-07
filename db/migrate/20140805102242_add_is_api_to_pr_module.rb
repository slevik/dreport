class AddIsApiToPrModule < ActiveRecord::Migration
  def change
  	add_column :pr_modules, :is_api, :boolean
  	add_column :pr_modules, :is_ui, :boolean
  end
end
