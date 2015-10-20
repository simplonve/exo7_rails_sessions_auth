class User < ActiveRecord::Base
  def self.login(email)
    find_by(email: email)
  end
end
