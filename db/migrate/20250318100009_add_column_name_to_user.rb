class AddColumnNameToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
  end
end
