class Staff < ApplicationRecord
  belongs_to :calendar
  has_many :staff_shifts, dependent: :destroy
  has_many :tasks


end

