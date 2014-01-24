class AddUserIdToRooms < ActiveRecord::Migration
  def change

  	# add column to TABLE, WHAT IT IS and WHAT TIME
  	add_column :rooms, :user_id, :integer


  end
end
