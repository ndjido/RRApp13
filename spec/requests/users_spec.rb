require 'spec_helper'

describe "Users" do
   it "can visit home page" do
     visit root_path
     click_link "New User"
     fill_in 'Name', :with => "Ndjido"
     fill_in 'Em@il', :with => "ndjido@gmail.com"
     click_button "Create User"
   end
end
