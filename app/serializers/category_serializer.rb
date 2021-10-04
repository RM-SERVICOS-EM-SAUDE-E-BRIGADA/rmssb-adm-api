# frozen_string_literal: true

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :nome, :status
end
