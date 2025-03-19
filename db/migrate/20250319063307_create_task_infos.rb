class CreateTaskInfos < ActiveRecord::Migration[7.2]
  def change
    create_table :task_infos do |t|
      t.string :assignTo
      t.string :complete

      t.timestamps
    end
  end
end
