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
  end
end
