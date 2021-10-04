# frozen_string_literal: true

class Modality < ApplicationRecord
  include SharedMethods

  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }
end
