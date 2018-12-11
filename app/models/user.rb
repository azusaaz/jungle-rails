class User < ActiveRecord::Base
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 3}
  
  def authenticate_with_credentials(email, password)
    if @user = User.find_by('lower(email) = ?', email.strip().downcase).try(:authenticate, password) 
      return @user
    else
      nil
    end
  end

end
