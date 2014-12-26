class Admin < ActiveRecord::Base
  def self.authenticate(email, password)
    admin = find_by_email(email)
    if admin && admin.password_hash == BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end
end
