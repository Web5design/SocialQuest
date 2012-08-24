class AddSkillIdToQuests < ActiveRecord::Migration
  def change
    add_column :quests, :skill_id, :integer
  end
end
