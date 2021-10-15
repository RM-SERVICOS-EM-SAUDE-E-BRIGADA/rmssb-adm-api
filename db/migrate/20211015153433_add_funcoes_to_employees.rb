class AddFuncoesToEmployees < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE TYPE employee_funcao AS ENUM ('Motorista', 
      'Técnico de Enfermagem', 'Brigadista', 'Bombeiro Civíl', 
      'Auxiliar Administrativo', 'Gerente Administrativo', 'Enfermeiro', 
      'Médico', 'Call-Center');
    SQL
    add_column :employees, :funcao, :employee_funcao
    add_index :employees, :funcao
  end

  def down
    remove_column :employees, :funcao
    execute <<-SQL
      DROP TYPE employee_funcao;
    SQL
  end
end
