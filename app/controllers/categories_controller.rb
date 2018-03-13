class CategoriesController < ApplicationController

  def index
    company = Company.find(params[:company_id])
    @categories = company.categories
  end

  def create
    @category = Category.create(category_params)
  end

  private
  
  def category_params
    params.require(:category).permit(:name, :codeletter, :company_id)
  end
end
