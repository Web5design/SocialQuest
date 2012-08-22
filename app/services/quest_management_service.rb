# encoding: UTF-8

class QuestManagementService
  class << self
    def create!(user, quest_attributes)
      quest = create_quest(user, quest_attributes)
      success = quest.errors.present? ? false : true
      
      [success, quest]
    end
  
    private
    def create_quest(user, quest_attributes)
      quest = Quest.new(quest_attributes)
      quest.user = user
      quest.save
      quest
    end
  end
end