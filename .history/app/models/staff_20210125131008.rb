class Staff < ApplicationRecord
  belongs_to :calendar
  has_many :staff_shifts, dependent: :destroy
  has_many :tasks

  def time(date, time)
    puts time
    "#{date.year}-#{date.month}-#{date.day}T#{time.hour}:#{time.min}:00+09:00"
    debugger
  end
end

