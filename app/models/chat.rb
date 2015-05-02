class Chat < ActiveRecord::Base
  has_many :comments
  
  has_many :conversations
  has_many :users, :through => :conversations
end
