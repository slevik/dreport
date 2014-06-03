class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.integer :user
      t.integer :number
      t.text :description
      t.integer :status
      t.string :estimate
      t.string :date
      t.integer :project

      t.timestamps
    end
  end
end
