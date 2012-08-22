# encoding: UTF-8

class QuestManagementService
  class << self
    def create!(user, quest_attributes)
      quest = create_quest(user, quest_attributes)
      success = quest.errors.present? ? false : true
      
      [success, quest]
    end
    
    def update!(quest,quest_attributes)
      quest = update_quest(quest,quest_attributes)
      success = quest.errors.present? ? false : true
      [success,quest]
    end
  
    private
    def create_quest(user, quest_attributes)

      puts quest_attributes.inspect

      quest = Quest.new(quest_attributes)
      quest.user = user
      quest.save
      quest
    end
    
    def update_quest(quest,quest_attributes)
      quest.update_attributes(quest_attributes)
      quest
    end
  end
end