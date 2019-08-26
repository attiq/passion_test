class VerticalsController < ApplicationController
  before_action :set_vertical, only: [:show, :update, :destroy]

  # GET /verticals
  def index
    @verticals = Vertical.all
    json_response(@verticals)
  end

  # POST /verticals
  def create
    @vertical = Vertical.create!(vertical_params)
    json_response(@vertical, :created)
  end

  # GET /verticals/:id
  def show
    json_response(@vertical)
  end

  # PUT /verticals/:id
  def update
    @vertical.update(vertical_params)
    head :no_content
  end

  # DELETE /verticals/:id
  def destroy
    @vertical.destroy
    head :no_content
  end

  private

  def vertical_params
    # whitelist params
    params.permit(:name)
  end

  def set_vertical
    @vertical = Vertical.find(params[:id])
  end
end
