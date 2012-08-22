# encoding: UTF-8

class UserRepository
  class << self
    def find(id)
      [true, User.find(id)]
    rescue
      [false, nil]
    end
  end
end