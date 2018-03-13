class TurnsController < ApplicationController
  before_action :set_turn, only: [:update]

  def index
    company = Company.find(params[:company_id])
    @turns = company.turns.active
  end

  def create
    @turn = Turn.create(user: User.first, category: Category.first, company_id: turn_params[:company_id], turn_number: turn_params[:turn_number])
  end

  def update
    @turn.update(turn_params)
  end
  
  def destroy_turns
    Turn.destroy_all
  end

  private

  def turn_params
    params.require(:turn).permit(:category_id, :company_id, :user_id, :status, :turn_number)
  end

  def set_turn
    @turn = Turn.find(params[:id])
  end
end