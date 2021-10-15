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
  end
end
