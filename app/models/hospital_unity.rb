# frozen_string_literal: true

# == Schema Information
#
# Table name: hospital_unities
#
#  id         :bigint           not null, primary key
#  status     :boolean          not null
#  nome       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class HospitalUnity < ApplicationRecord
  include SharedMethods
  before_create :activate
  before_create :set_upcased_name
  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }
end
