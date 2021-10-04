# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
    @category = Category.new(resource_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: ErrorSerializer.serialize(@category.errors), status: :unprocessable_entity
    end
  end

  def update
    if @category.update(resource_params)
      render json: @category, status: :ok, location: @category
    else
      render json: ErrorSerializer.serialize(@category.errors), status: :unprocessable_entity
    end
  end

  def destroy
    # TODO
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def resource_params
    params.require(:category).permit(:status, :nome)
  end
end
