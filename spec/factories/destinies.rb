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
FactoryBot.define do
  factory :destiny do
    status { false }
    nome { 'MyString' }
    valor { '9.99' }
  end
end
