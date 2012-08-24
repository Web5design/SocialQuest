class CreateQuestSkills < ActiveRecord::Migration
  def up
    create_table :quests_skills, :id => false do |t|
      t.integer :quest_id
      t.integer :skill_id
    end
  end

  def down
    drop_table :quests_skills
  end
end
