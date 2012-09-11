class User < ActiveRecord::Base
  authenticates_with_sorcery! #this activate socery
  
attr_accessible  :email, :password, :password_confirmation 

email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :password, :presence => true

validates :password, :presence => true,
                     :confirmation => true,
                     :length => { :within => 6..20 }

validates :email, :presence => true,
                  :format   => { :with => email_regex }
                
def self.findbar(name="")
    self.where('username LIKE ?', name)
end

end 
