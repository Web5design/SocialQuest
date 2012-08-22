class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :title
      t.integer :user_id
      t.string :type
      t.text :description
      
      t.datetime :start_time
      t.datetime :end_time
      
      t.timestamps
    end
  end
end
