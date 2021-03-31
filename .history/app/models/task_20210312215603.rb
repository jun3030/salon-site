class Task < ApplicationRecord
  after_create_commit { TaskBroadcastJob.perform_later self }
  acts_as_paranoid

  belongs_to :task_course, optional: true
  belongs_to :calendar
  belongs_to :staff, optional: true
  belongs_to :store_member, optional: true

  scope :only_valid, -> { where(is_valid_task: true) } # 有効な予約
  scope :only_invalid, -> { where(is_valid_task: false) } # 無効な予約

  # UNIXTIMEに変換
  def start_at
    start_time.to_i
  end

  def end_at
    end_time.to_i
  end

  # その時間の予約に対応できるスタッフがいるかどうかの検証
  def any_staff_available?
    if staff
      return false if invalid?

      return true
    else
      calendar.staffs.each do |staff|
        if staff.google_api_token
          next if SyncCalendarService.new(Task.new, staff, staff.calendar).public_read_event((start_time..end_time)).any?
        end
        self.staff = staff
        if valid?
          self.is_appoint = false
          return true
        end
      end
    end
    return false unless self.staff
  end

  def mail_send
    NotificationMailer.send_confirm_to_user(self, calendar.user, calendar).deliver
  end

  def mail_send_with_edit_task
    NotificationMailer.send_edit_task_to_user(self, calendar.user, calendar).deliver
  end

  def mail_send_with_delete_task
    NotificationMailer.send_delete_task_to_user(self, calendar.user, calendar).deliver
  end
end
