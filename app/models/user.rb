class User < ActiveRecord::Base
  
    has_secure_password

  # to avoid  NoMethodError:undefined method `password'
  attr_accessor :password

  validates :password, :confirmation => true
  validates :password_confirmation, :presence => true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 3}
  
  def authenticate_with_credentials(email, password)
    # if @user = User.find_by('lower(email) = ?', email.strip().downcase).try(:authenticate, password) 
    #   return @user

      if @user = User.find_by(email: email).try(:authenticate, password) 
        return User.first
    else
      nil
    end
  end

end
