class AddUserIdToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :user_id, :integer
    add_index :picks, :user_id
  end
end
