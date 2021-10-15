# frozen_string_literal: true

CATEGORIES = [
  { nome: 'INTER HOSPITALAR' },
  { nome: 'ALTA' },
  { nome: 'PEDIATRIA' },
  { nome: 'NEONATOLOGIA' },
  { nome: 'EVENTO' },
  { nome: 'NEONATAL-UNIMED' }
].freeze

MODALITIES = [
  { nome: 'INTER HOSPITALAR' },
  { nome: 'EVENTO' },
  { nome: 'KM' }
].freeze

DESTINIES = [
  { nome: 'campos x Farol UTI', valor: '1500.00' },
  { nome: 'campos x Farol Básica', valor: '1200.00' },
  { nome: 'Campos x Travessão UTI', valor: '670.00' },
  { nome: 'Campos x Travessão Básica', valor: '560.00' },
  { nome: 'São Sebastião- UTI', valor: '670.00' },
  { nome: 'São Sebastião- Básica', valor: '560.00' },
  { nome: 'Particular Aeroporto', valor: '775.00' },
  { nome: 'PRONEP LAR X UTI', valor: '515.00' },
  { nome: 'PRONEP LAR X BÁSICA', valor: '430.00' },
  { nome: 'PRONEP LAR X CAMPOS UTI', valor: '515.00' },
  { nome: 'PRONEP LAR X CAMPOS BÁSICA', valor: '430.00' },
  { nome: 'CAMPOS X SÃO FIDÉLIS BÁSICA', valor: '1200.00' },
  { nome: 'CAMPOS X ITAPERUNA -UTI', valor: '2573.50' },
  { nome: 'CAMPOS X ITAPERUNA -Básica', valor: '1821.50' },
  { nome: 'PARTICULAR UTI -CAMPOS X SÃO FRANCISCO DO ITABAPOANA', valor: '1500.00' },
  { nome: 'PARTICULAR BÁSICA-CAMPOS X SÃO FRANCISCO DO ITABAPOANA', valor: '1200.00' },
  { nome: 'CAMPOS X CARDOSO MOREIRA - UTI', valor: '1500.00' },
  { nome: 'CAMPOS X CARDOSO MOREIRA -BÁSICA', valor: '1200.00' },
  { nome: 'PARTICULAR UTI - CAMPOS X SÃO JOÃO DA BARRA', valor: '1500.00' },
  { nome: 'PARTICULAR BÁSICA - CAMPOS X SÃO JOÃO DA BARRA', valor: '1200.00' },
  { nome: 'AMIL - CAMPOS X REG. DOS LAGOS - UTI', valor: '1700.00' },
  { nome: 'AMIL - CAMPOS X REG. DOS LAGOS - BÁSICA', valor: '950.00' },
  { nome: 'AMIL - CAMPOS X REG. NORTE - UTI', valor: '1700.00' },
  { nome: 'AMIL - CAMPOS X REG. NORTE - BÁSICA', valor: '950.00' },
  { nome: 'AMIL - CAMPOS X REG. NOROESTE - UTI', valor: '1700.00' },
  { nome: 'AMIL - CAMPOS X REG. NOROESTE - BÁSICA', valor: '950.00' },
  { nome: 'AMIL - CAMPOS X RJ - BÁSICA', valor: '1800.00' },
  { nome: 'AMIL - CAMPOS X RJ - UTI', valor: '2500.00' },
  { nome: 'Campos x São Fidelis UTI', valor: '1500.00' }
].freeze

HOSPITAL_UNITIES = [
  { nome: 'Unimed Campos' },
  { nome: 'HPC' },
  { nome: 'H. ALVARO ALVIM' },
  { nome: 'H. BENEFICÊNCIA PORTUGUESA ' },
  { nome: 'CINTILOG' },
  { nome: 'CAD' },
  { nome: 'CLINICA DR. CESARIO ' },
  { nome: 'CLINICA SANTA MARIA ' },
  { nome: 'CLINICA SANTA HELENA ' },
  { nome: 'CENTRO COR ' },
  { nome: 'CEPLIN' },
  { nome: 'H. DR. BEDA ' },
  { nome: 'HGG' },
  { nome: 'H. FERREIRA MACHADO ' },
  { nome: 'LILIA NEVES ' },
  { nome: 'CLINICA RENOVA ' },
  { nome: 'ONCOBEDA' },
  { nome: 'PRO RIM ' },
  { nome: 'H. PRONTO CARDIO ' },
  { nome: 'H. SÃO JOSE DO AVAI ' },
  { nome: 'RAD MED ' },
  { nome: 'SANTA CASA DE MISERICÓRDIA DE CAMPOS ' },
  { nome: 'ULTRA MED ' },
  { nome: 'URM DIAGNÓSTICOS ' }
].freeze

CANCELLATION_REASONS = [
  { nome: 'Alto custo' },
  { nome: 'Não houve necessidade de remoção' },
  { nome: 'Óbito' },
  { nome: 'Realizou com outro prestador' },
  { nome: 'Atendido pelo SUS/ SAMU' },
  { nome: 'Não houve vaga disponível no Hospital destino' },
  { nome: 'Tempo de resposta maior que o necessário para o serviço' }
].freeze
