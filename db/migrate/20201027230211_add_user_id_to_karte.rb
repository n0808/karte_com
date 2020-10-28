class AddUserIdToKarte < ActiveRecord::Migration[6.0]
  def change
    add_column :kartes, :user_id, :integer, null: false
  end
end
