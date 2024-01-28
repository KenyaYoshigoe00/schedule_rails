class Content < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_later_than_start_date
  validates :memo, length: {maximum: 500}
  
  def end_date_later_than_start_date
    if end_date.present? && start_date.present? && end_date < start_date
      errors.add(:end_date, ":開始日以降に設定してください")
    end
  end
end
