class User < ActiveRecord::Base
  def has_password?(password)
    return self.password = password
  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(password)
  end
end
