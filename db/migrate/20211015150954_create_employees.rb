class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.boolean :status
      t.string :nome
      t.string :telefone
      t.string :ramal
      t.string :cpf
      t.string :crm
      t.string :coren
      t.string :cnh
      t.string :categoria_cnh
      t.string :vencimento_cnh
      t.string :tipo_funcionario
      t.string :lotado_em

      t.timestamps
    end
    add_index :employees, :nome, unique: true
  end
end
