class User < ApplicationRecord
  has_secure_password
  has_many :trades
  validates :username, presence: true, uniqueness: true

  def trades_by_epic
    trades.group_by(&:epic).map do |k, v|
      {
        epic: k,
        exchange: similar_exchange(v),
        number_of_shares: total_shares(v),
        book_value: total_book_value(v)
      }
    end
  end

  def total_shares array
    array.map(&:number_of_shares).compact.reduce(:+)
  end

  def total_book_value array
    array.map(&:book_value).compact.reduce(:+)
  end

  def similar_exchange array
    array.map(&:exchange).first
  end
end
