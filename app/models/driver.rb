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
class Driver < Employee
  def set_cnh=(value)
    self.cnh = value
  end
end
