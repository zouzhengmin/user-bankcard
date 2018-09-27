class BankCardsController < ApplicationController

  def index
    @bank_cards = BankCard.includes(:user)
  end

  def new
    @bank_card = BankCard.new
  end

  def create
    bank_card = BankCard.new(bank_card_params)
    bank_card.save
    redirect_to bank_cards_path
  end

  private

  def bank_card_params
    params.require(:bank_card).permit(:user_id, :number, :bank_name, :status)
  end


end
