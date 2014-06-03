class ChangeBugs < ActiveRecord::Migration
  def change
    add_column :bugs, :points, :integer, :default => 1
  end
end
