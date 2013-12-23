class AddTagsToIssues < ActiveRecord::Migration
  def change
    add_column :screencasts, :tags, :string, :default => "default tags" #add project_id (integer type, default to 1) to the screencasts table
  end
end
