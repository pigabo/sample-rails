class CreateScreencasts < ActiveRecord::Migration
  def change
    create_table :screencasts do |t|
      t.string :title
      t.text :summary
      t.string :duration
      t.string :link
      t.datetime :published_at
      t.string :source
      t.string :videourl

      t.timestamps
    end
  end
end
