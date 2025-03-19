class AddDueDateToTaskInfos < ActiveRecord::Migration[7.2]
  def change
    add_column :task_infos, :due_date, :datetime
  end
end
