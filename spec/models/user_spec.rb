require 'spec_helper'

describe User do
   
  before(:each) do
    @user_attr = {:name => "Ndjido A BAR", :email => "ndjidobar@gmail.com", :password => ""}
    @user = Factory(:user)
  end
  
  it "can create user with name & email" do
    User.create!(@user_attr)
    user = User.new(@user_attr)
    user.should be_valid
  end
  
  it "canT create user without name" do
    @user ={:email => "ndjido@gmail.com"}
    User.new(@user).should_not be_valid
  end
  
  it "canT create user without email" do
    @user ={:name => "Ndjido"}
    User.new(@user).should_not be_valid
  end
  
  it "canT create user with invali email address" do
    @user ={:name => "Ndjido A BAR", :email => "ndjidobarATgmail.com"}
    User.new(@user).should_not be_valid
  end
  
  it "canT create user without password" do
    @user ={:name => "Ndjido A BAR", :email => "ndjidobar@gmail.com", :password => ""}
    User.new(@user).should_not be_valid
  end
  
end

