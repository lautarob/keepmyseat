class CompanyUsersController < ApplicationController

  def index
    @company_users = CompanyUser.all
    render json: @company_users
  end

  def subscribed_companies
    @companies = User.find(company_user_params[:user_id]).company_users.map {|company_user| company_user.company}
  end

  def create
    @company_user = CompanyUser.create(
      user_id: company_user_params[:user_id],
      company_id: company_user_params[:company_id])
    render json: @company_user
  end

  private

  def company_user_params
    params.require(:company_user).permit(:company_id, :user_id)
  end
end
