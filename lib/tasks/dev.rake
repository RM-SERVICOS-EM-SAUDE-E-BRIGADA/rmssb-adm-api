# frozen_string_literal: true

load 'lib/datasets.rb'
namespace :dev do
  desc 'TODO'
  task setup: :environment do
    sleep(0.5)
    puts 'RESENTANDO CATEGORIAS'
    ActiveRecord::Base.connection.execute('TRUNCATE categories RESTART IDENTITY')
    sleep(2)
    puts 'CATEGORIAS EXCLUÍDAS'

    puts '------ INSERINDO CATEGORIAS NOVAMENTE ------'
    # puts CATEGORIES
    CATEGORIES.each do |category|
      Category.create!(category)
    end
  end
end
