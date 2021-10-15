# frozen_string_literal: true

class ModalitiesController < ApplicationController
  before_action :set_modality, only: %i[update destroy]

  def index
    @modalities = Modality.all
    render json: @modalities
  end

  def create
    @modality = Modality.new(resource_params)

    if @modality.save
      render json: @modality, status: :created, location: @modality
    else
      render json: ErrorSerializer.serialize(@modality.errors), status: :unprocessable_entity
    end
  end

  def update
    if @modality.update(resource_params)
      render json: @modality, status: :ok, location: @modality
    else
      render json: ErrorSerializer.serialize(@modality.errors), status: :unprocessable_entity
    end
  end

  def destroy; end

  private

  def resource_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end

  def set_modality
    @modality = Modality.find(params[:id])
  end
end
