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
# @singleton
class Employee < Person
  enum funcao: {
    motorista: 'Motorista',
    tec_enf: 'Técnico de Enfermagem',
    brigadista: 'Brigadista',
    bombeiro: 'Bombeiro Civíl',
    adm: 'Auxiliar Administrativo',
    enfermeiro: 'Enfermeiro',
    medico: 'Médico',
    call_center: 'Call-Center'
  }

  def my_function
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
