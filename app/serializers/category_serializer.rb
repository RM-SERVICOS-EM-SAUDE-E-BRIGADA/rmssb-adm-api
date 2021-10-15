# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  status     :boolean
#  nome       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CategorySerializer < ActiveModel::Serializer
  attributes :id, :nome, :status
end
