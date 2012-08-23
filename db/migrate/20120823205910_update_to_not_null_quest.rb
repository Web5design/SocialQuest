class UpdateToNotNullQuest < ActiveRecord::Migration
  def up
      remove_column :quests, :title
      remove_column :quests, :type
      remove_column :quests, :user_id
      remove_column :quests, :description
      remove_column :quests, :latitude
      remove_column :quests, :longitude

			add_column :quests, :title, :string, null: false
			add_column :quests, :user_id, :integer, null: false
      add_column :quests, :description, :text, null: false
	    add_column :quests, :latitude, :float, null: false
  	  add_column :quests, :longitude, :float, null: false

  	  # type :string changed to type_id :integer
      add_column :quests, :type_id, :integer, null: false
      # add_column :quests, :skill_id, :integer, null: false
  end

  def down
		add_column :quests, :title, :string
		add_column :quests, :user_id, :integer
    add_column :quests, :description, :text
    add_column :quests, :latitude, :float
	  add_column :quests, :longitude, :float
	  add_column :quests, :type, :string

	end  	
end
