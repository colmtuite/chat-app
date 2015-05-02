class AddOwnerEmailToChat < ActiveRecord::Migration
  def change
    add_column :chats, :owner_email, :string
  end
end
