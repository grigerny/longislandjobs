class CreateLoops < ActiveRecord::Migration
  def change
    create_table :loops do |t|

      t.timestamps
    end
  end
end
