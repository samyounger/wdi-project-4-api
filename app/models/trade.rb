class Trade < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  enum trade_type: [:sell, :buy]

  # before_validation :check_number_of_shares
  before_save :make_amount_negative


  private
    def make_amount_negative
      self.number_of_shares *= -1 if self.trade_type === "sell"
    end

    # # Could be tidier
    # def check_number_of_shares
    #   if (!shares_of_type < self.number_of_shares.abs) || (shares_of_type.map(&:number_of_shares).reduce(:+) < self.number_of_shares.abs)
    #     errors.add(:number_of_shares, "you don't have enough shares")
    #   end
    # end
    #
    # def shares_of_type
    #   self.user.trades.where(epic: self.epic, trade_type: "buy")
    # end
end
