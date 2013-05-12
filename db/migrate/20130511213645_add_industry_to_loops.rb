class AddIndustryToLoops < ActiveRecord::Migration
  def change
    add_column :loops, :industry, :string
  end
end
