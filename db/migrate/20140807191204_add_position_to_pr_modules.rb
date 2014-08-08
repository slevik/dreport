class AddPositionToPrModules < ActiveRecord::Migration
  def change
    add_column :pr_modules, :position, :integer
  end
end
