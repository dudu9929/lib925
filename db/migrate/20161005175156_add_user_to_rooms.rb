class AddUserToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :user, :string
  end
end
