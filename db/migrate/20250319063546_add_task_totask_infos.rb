class AddTaskTotaskInfos < ActiveRecord::Migration[7.2]
  def change
    add_reference :task_infos, :task, null: false, foreign_key: true
  end
end
