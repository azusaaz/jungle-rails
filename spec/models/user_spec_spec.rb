require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

  #   describe "User" do

  #     it 'created with a password and password_confirmation fields' do
  #       @user = User.create(:first_name => "aaa", :last_name => "bbb", :email => "ccc@ccc.com", :password =>"ddd",:password_confirmation => "")

  #       expect(@user.valid?).to be false
  #       #puts @user.errors.full_messages
  #     end

  #     it 'Emails must be unique' do
  #       @user1 = User.create(:first_name => "aaa", :last_name => "bbb", :email => "test@test.COM", :password =>"ddd")
  #       @user2 = User.create(:first_name => "aaa", :last_name => "bbb", :email => "TEST@TEST.com", :password =>"ddd")

  #       expect(@user2.valid?).to be false
  #       # puts @user2.errors.full_messages
  #     end 

  #     it 'Email should be required' do
  #       @user = User.create(:first_name => "aaa", :last_name => "bbb", :email => "", :password =>"ddd")
        
  #       expect(@user.valid?).to be false
  #       #puts @user.errors.full_messages
  #     end

  #     it 'First name should be required' do
  #       @user = User.create(:first_name => "", :last_name => "bbb", :email => "TEST@TEST.com", :password =>"ddd")
        
  #       expect(@user.valid?).to be false
  #       #puts @user.errors.full_messages
  #     end

  #     it 'Last name should be required' do
  #       @user = User.create(:first_name => "aaa", :last_name => "", :email => "TEST@TEST.com", :password =>"ddd")
        
  #       expect(@user.valid?).to be false
  #       #puts @user.errors.full_messages
  #     end

  #     it 'password must have a minimum length' do
  #       @user = User.create(:first_name => "aaa", :last_name => "bbb", :email => "TEST@TEST.com", :password =>"dd")
        
  #       expect(@user.valid?).to be false
  #       #puts @user.errors.full_messages
  #     end

      


  #   end
  # end

  # describe '.authenticate_with_credentials' do

  #   it 'email and password must be match' do

  #     @user = User.create(:first_name => "aaa", :last_name => "bbb", :email => "TEST@TEST.com", :password =>"ddd")

  #     @auth = @user.authenticate_with_credentials("TEST@TEST.com", "kkk" )
      
  #     expect(@auth).to be nil
  #     #puts @user.errors.full_messages
  #   end

    it 'spaces before and/or after an email address should be allowed' do

      @user = User.create(:first_name => "aaa", :last_name => "bbb", :email => "example@domain.com  ", :password =>"ddd")
      
      puts @user[:email]
      @auth = @user.authenticate_with_credentials("  example@domain.com ", "ddd" )
      
      expect(@auth).to be_present
      #puts @user.errors.full_messages
    end

    it 'case different address should be match' do

      @user = User.create(:first_name => "aaa", :last_name => "bbb", :email => "eXample@domain.COM", :password =>"ddd")
      
      puts @user[:email]
      @auth = @user.authenticate_with_credentials("  EXAMPLe@DOMAIN.CoM ", "ddd" )
      
      expect(@auth).to be_present
      #puts @user.errors.full_messages
    end

  end

end