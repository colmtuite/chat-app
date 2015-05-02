class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates_presence_of :email
  validates_uniqueness_of :email
  validates :password, presence: { on: :create }
  validates :name, presence: true
  
  has_many :comments
  
  has_many :conversations
  has_many :chats, :through => :conversations
end
