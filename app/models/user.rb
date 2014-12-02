class User <ActiveRecord::Base
  has_many :rounds

  def self.valid?(email)
    User.exists?(email: email)
  end

  def authenticate(email, given_password)
    if self.password == given_password
      true
    else
      false
    end
  end
end
