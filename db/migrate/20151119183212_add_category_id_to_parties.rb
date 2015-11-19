class AddCategoryIdToParties < ActiveRecord::Migration
  def change
    add_column :parties, :category_id, :integer
  end
end
