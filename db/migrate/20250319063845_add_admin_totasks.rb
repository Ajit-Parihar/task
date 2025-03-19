class AddAdminTotasks < ActiveRecord::Migration[7.2]
  def change
    add_reference :tasks, :admin, null: false, foreign_key: true
  end
end
