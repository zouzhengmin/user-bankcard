class BankCardsController < ApplicationController

  before_action :find_bank_card, only: [:show, :edit, :update, :destroy]

  def index
    @bank_cards = BankCard.includes(:user)
    @users = User.all
  end

  def show
  end

  def new
    @bank_card = BankCard.new
  end

  def create
    @bank_card = BankCard.new(bank_card_params)
    @bank_card.save
    redirect_to bank_cards_path
  end

  def edit
  end

  def update
    @bank_card.update(bank_card_params)
    redirect_to bank_cards_path
  end

  def destroy
    @bank_card.delete
    redirect_to bank_cards_path
  end

  private

  def bank_card_params
    params.require(:bank_card).permit(:user_id, :number, :bank_name, :status)
  end

  def find_bank_card
    @bank_card = BankCard.find(params[:id])
  end


end
