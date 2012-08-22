# encoding: UTF-8

class UserRepository
  class << self
    def find(id)
      [true, User.find(id)]
    rescue
      [false, nil]
    end
    
    def find_or_register_by_email(email)
      if user = User.find_by_email(email)
        [true, user]
      else
        UserRegistrationService.register!(email)
      end
    end
  end
end