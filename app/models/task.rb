class Task < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :admin
  has_one :task_infos

  def start_task
    update(start_time: Time.current, end_time: Time.current + 30.minutes)
  end

  def time_remaining
    return 0 if end_time.nil?
    [(end_time - Time.current).to_i, 0].max
  end
  
end
