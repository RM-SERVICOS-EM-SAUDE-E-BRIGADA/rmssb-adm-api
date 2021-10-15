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
class ModalitySerializer < ActiveModel::Serializer
  attributes :id, :nome
end
