class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :body

      t.timestamps
    end
  end
end
