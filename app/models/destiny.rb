# frozen_string_literal: true

# == Schema Information
#
# Table name: destinies
#
#  id         :bigint           not null, primary key
#  status     :boolean          not null
#  nome       :string           not null
#  valor      :decimal(14, 2)   not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Destiny < ApplicationRecord
  include SharedMethods
  before_create :activate
  before_create :set_upcased_name
  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }
end
