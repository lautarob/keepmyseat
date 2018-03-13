class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render json: @companies
  end

  def create
    @company = Company.create(company_params)
    render json: @company
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end
end
