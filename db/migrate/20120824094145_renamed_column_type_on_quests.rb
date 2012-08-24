class RenamedColumnTypeOnQuests < ActiveRecord::Migration
  def up
    remove_column :quests, :type
    add_column :quests, :kind, :string
  end

  def down
    remove_column :quests, :kind
    add_column :quests, :type, :string
  end
end
