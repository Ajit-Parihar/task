class RenameUserColumns < ActiveRecord::Migration[7.2]
  def change
    rename_column :users, :firstName, :first_name
    rename_column :users, :lastName, :last_name
    rename_column :users, :NumOfTask, :num_of_task
  end
end
