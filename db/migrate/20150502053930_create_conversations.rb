class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :user_id
      t.integer :chat_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
