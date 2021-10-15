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
# ORIGEM DESTINOS
class Destiny < ApplicationRecord
  include SharedMethods
  before_create :setUpcasedName

  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }
end
