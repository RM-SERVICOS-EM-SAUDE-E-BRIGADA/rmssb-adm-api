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
FactoryBot.define do
  factory :modality do
    status { false }
    nome { 'MyString' }
  end
end
