class FixColumnName < ActiveRecord::Migration
  def change
      rename_column :loops, :commments, :comment
    end
end
