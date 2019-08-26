class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categorys
  def index
    @categories = Category.all
    json_response(@categories)
  end

  # POST /categorys
  def create
    @category = Category.create!(category_params)
    json_response(@category, :created)
  end

  # GET /categorys/:id
  def show
    json_response(@category)
  end

  # PUT /categorys/:id
  def update
    @category.update(category_params)
    head :no_content
  end

  # DELETE /categorys/:id
  def destroy
    @category.destroy
    head :no_content
  end

  private

  def category_params
    # whitelist params
    params.permit(:name, :vertical_id, :state)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
