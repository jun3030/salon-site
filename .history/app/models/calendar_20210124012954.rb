class Calendar < ApplicationRecord

  # gem "public_uid"でDBに保存される前にpublic_uidに8桁のランダムな文字列が付与される
  generate_public_uid

  has_one :calendar_config
  has_many :staffs

  validates :display_week_term, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  validates :end_date, presence: true, numericality: { only_integer: true }
  validates :start_date, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :end_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }
  validates :start_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }

  validate :start_time_end_time_validate

  private

  def booking_message(calendar)
    text = <<-EOS
        ご予約ありがとうございます！
        #{calendar.calendar_name}
    EOS
  end

  def start_time_end_time_validate
    if start_time >= end_time
      errors.add(:start_time, 'は表示終了時刻より遅い時間には設定できません') # エラーメッセージ
    end
  end


  # t.string "calendar_name" # 店舗名
  # t.integer "start_date", default: 1 # お客様が予約できる開始日付の設定。0と設定すると本日の予約から受付可能になります。
  # t.integer "end_date", default: 7 # 何日後まで予約できるようにするかを設定
  # t.integer "display_week_term", default: 3 # 表示期間（週間）
  # t.integer "start_time", default: 9 # 表示開始時刻（時）
  # t.integer "end_time", default: 18 # 表示終了時刻（時)
  # t.boolean "is_released", default: false # カレンダーの公開、非公開
  # t.integer "display_time", default: 5 # お客様の予約カレンダーで現時刻から、何時間後の予約から許容するかの設定です。
  # t.string "address", default: "東京都渋谷区"
  # t.string "phone", default: "09012345678"
  # t.string "public_uid"
  # t.integer "display_interval_time", default: 10 # カレンダーの表示時間の間隔（分）
end
