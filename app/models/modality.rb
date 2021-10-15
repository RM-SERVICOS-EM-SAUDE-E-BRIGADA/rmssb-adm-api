# frozen_string_literal: true

# == Schema Information
#
# Table name: modalities
#
#  id         :bigint           not null, primary key
#  status     :boolean
#  nome       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# MODALIDADES
class Modality < ApplicationRecord
  include SharedMethods
  before_create :activate
  before_create :set_upcased_name
  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }
end
