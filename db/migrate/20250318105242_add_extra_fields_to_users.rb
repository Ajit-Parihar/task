class AddExtraFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :NumOfTask, :integer
  end
end
