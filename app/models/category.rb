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
# CATEGORIAS
class Category < ApplicationRecord
  include SharedMethods
  before_create :setUpcasedName
  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }

  before_create :activate
end
