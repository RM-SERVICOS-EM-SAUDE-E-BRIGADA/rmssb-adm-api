# frozen_string_literal: true

class Category < ApplicationRecord
  include SharedMethods

  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }

  before_create :activate
end
