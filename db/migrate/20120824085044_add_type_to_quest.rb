class AddTypeToQuest < ActiveRecord::Migration
  def up
    remove_column :quests, :type_id
    add_column :quests, :type, :string
  end
  def down
    remove_column :quests, :type
    add_column :quests, :type_id, :integer
  end
end
