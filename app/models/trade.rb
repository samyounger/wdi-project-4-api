class Trade < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  enum trade_type: [:sell, :buy]
end
