class AddDueDateToTasks < ActiveRecord::Migration[7.2]
  def change
    add_column :tasks, :due_date, :datetime
  end
end
