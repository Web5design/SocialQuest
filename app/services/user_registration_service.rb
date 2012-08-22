# encoding: UTF-8

class UserRegistrationService
  class << self
    def register!(email)
      user = create_user(email)
      success = user.errors.present? ? false : true
      
      [success, user]
    end
      
    private
    def create_user(email)
      User.create(email: email)
    end
  end
end