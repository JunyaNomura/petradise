class CreateChatRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_rooms do |t|
      t.string :name
      t.references :user_one, foreign_key: { to_table: :users }
      t.references :user_two, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
