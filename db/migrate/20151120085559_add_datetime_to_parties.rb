class AddDatetimeToParties < ActiveRecord::Migration
  def change
    add_column :parties, :datetime, :datetime
  end
end
