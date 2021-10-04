# frozen_string_literal: true

class Category < ApplicationRecord
  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }
  before_create :set_status

  private

  def set_status
    self.status = (true)
  end
end
