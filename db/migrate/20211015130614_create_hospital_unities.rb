class CreateHospitalUnities < ActiveRecord::Migration[6.1]
  def change
    create_table :hospital_unities do |t|
      t.boolean :status, null: false
      t.string :nome, null: false

      t.timestamps
    end
    add_index :hospital_unities, :nome, unique: true
  end
end
