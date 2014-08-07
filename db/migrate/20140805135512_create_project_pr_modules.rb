class CreateProjectPrModules < ActiveRecord::Migration
  def change
    create_table :project_pr_modules do |t|
      t.integer  :project_id
      t.integer  :module_id
      t.integer  :user_id
      t.boolean  :status
      t.date     :date
      t.string   :change_list_ui, default: ""
      t.string   :change_list_api, default: ""

      t.timestamps
    end
  end
end
