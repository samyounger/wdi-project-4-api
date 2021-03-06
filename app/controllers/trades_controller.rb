class TradesController < ApplicationController
  before_action :set_trade, only: [:show, :update, :destroy]

  # GET /trades
  def index
    @trades = Trade.all

    # @trades.to_a.sum { |t| t.book_value(parameter) }

    render json: @trades

  end

  # GET /trades/1
  def show
    render json: @trade
  end

  # POST /trades
  def create
    @trade = @current_user.trades.new(trade_params)

    if @trade.save
      render json: @trade, status: :created, location: @trade
    else
      render json: @trade.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trades/1
  def update
    if @trade.update(trade_params)
    puts trade_params
      render json: @trade
    else
      render json: @trade.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trades/1
  def destroy
    @trade.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade
      @trade = Trade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trade_params
      params.require(:trade).permit(:epic, :number_of_shares, :price, :book_value, :sale_value, :trade_type, :exchange, :comments)
    end
end
