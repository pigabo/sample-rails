class AddProjectIdToScreencasts < ActiveRecord::Migration
  def change
    add_column :screencasts, :project_id, :integer, :default => 1 #add project_id (integer type, default to 1) to the screencasts table
  end
end
