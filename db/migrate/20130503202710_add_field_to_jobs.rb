class AddFieldToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :field, :string
  end
end
