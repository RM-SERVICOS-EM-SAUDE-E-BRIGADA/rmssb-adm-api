# frozen_string_literal: true

load 'lib/datasets.rb'
namespace :dev do
  desc 'TODO'
  task setup: :environment do
    sleep(0.5)
    puts '------ RESENTANDO CATEGORIAS ------'
    ActiveRecord::Base.connection.execute('TRUNCATE categories RESTART IDENTITY')
    sleep(2)
    puts '------ CATEGORIAS EXCLUÍDAS ------'

    puts '------ INSERINDO CATEGORIAS NOVAMENTE ------'
    CATEGORIES.each do |category|
      Category.create!(category)
    end

    sleep(0.5)
    puts '------ RESENTANDO MODALIDADES ------'
    ActiveRecord::Base.connection.execute('TRUNCATE modalities RESTART IDENTITY')
    sleep(2)
    puts '------ MODALIDADES EXCLUÍDAS ------'

    puts '------ INSERINDO MODALIDADES NOVAMENTE ------'
    MODALITIES.each do |modality|
      Modality.create!(modality)
    end

    sleep(0.5)
    puts '------ RESENTANDO ORIGEM x DESTINOS ------'
    ActiveRecord::Base.connection.execute('TRUNCATE destinies RESTART IDENTITY')
    sleep(2)
    puts '------ ORIGEM x DESTINOS EXCLUÍDAS ------'

    puts '------ INSERINDO ORIGEM x DESTINOS NOVAMENTE ------'
    DESTINIES.each do |destiny|
      Destiny.create!(destiny)
    end

    sleep(0.5)
    puts '------ RESENTANDO UNIDADES HOSPITALARES ------'
    ActiveRecord::Base.connection.execute('TRUNCATE hospital_unities RESTART IDENTITY')
    sleep(2)
    puts '------ UNIDADES HOSPITALARES EXCLUÍDAS ------'

    puts '------ INSERINDO UNIDADES HOSPITALARES NOVAMENTE ------'
    HOSPITAL_UNITIES.each do |hospitalUnity|
      HospitalUnity.create!(hospitalUnity)
    end

    
    sleep(0.5)
    puts '------ RESENTANDO RAZÕES PARA CANCELAMENTO ------'
    ActiveRecord::Base.connection.execute('TRUNCATE hospital_unities RESTART IDENTITY')
    sleep(2)
    puts '------ RAZÕES PARA CANCELAMENTO EXCLUÍDAS ------'

    puts '------ INSERINDO RAZÕES PARA CANCELAMENTO NOVAMENTE ------'
    CANCELLATION_REASONS.each do |cancellationReason|
      CancellationReason.create!(cancellationReason)
    end
  end
end
