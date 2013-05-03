class AddLinkToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :link, :string
    add_column :jobs, :contact_info, :string
  end
end
