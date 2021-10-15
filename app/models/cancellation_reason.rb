# frozen_string_literal: true

# == Schema Information
#
# Table name: cancellation_reasons
#
#  id         :bigint           not null, primary key
#  status     :boolean
#  nome       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# RAZÕES PARA CANCELAMENTO
class CancellationReason < ApplicationRecord
  include SharedMethods
  before_create :activate
  before_create :setUpcasedName
  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }
end
