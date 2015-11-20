class AddUserIdToParties < ActiveRecord::Migration
  def change
    add_column :parties, :user_id, :integer
    add_index :parties, :user_id
  end
end
