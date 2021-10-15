# frozen_string_literal: true

# == Schema Information
#
# Table name: employees
#
#  id               :bigint           not null, primary key
#  status           :boolean
#  nome             :string
#  telefone         :string
#  ramal            :string
#  cpf              :string
#  crm              :string
#  coren            :string
#  cnh              :string
#  categoria_cnh    :string
#  vencimento_cnh   :string
#  tipo_funcionario :string
#  lotado_em        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  funcao           :enum
#
# @abstract
class Person < ApplicationRecord
  self.table_name = 'employees'

  include SharedMethods
  before_create :activate
  before_create :set_upcased_name 

  validates :nome, presence: true
  validates :nome, uniqueness: { case_sensitive: true }

  validates :telefone, numericality: { only_integer: true }

  def contato_telefone=(value)
    self.telefone = value
  end
end
