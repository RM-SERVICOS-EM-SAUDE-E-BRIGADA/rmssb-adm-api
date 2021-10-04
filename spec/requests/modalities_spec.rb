# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Modalities', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/modalities/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/modalities/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/modalities/edit'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/modalities/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/modalities/update'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/modalities/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
