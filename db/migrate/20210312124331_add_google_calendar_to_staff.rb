class AddGoogleCalendarToStaff < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :client_secret, :text
    add_column :staffs, :client_id, :text
    add_column :staffs, :google_calendar_id, :string
  end
end
