class CreateDestinies < ActiveRecord::Migration[6.1]
  def change
    create_table :destinies do |t|
      t.boolean :status, null: false
      t.string :nome, null: false
      t.decimal :valor, precision: 14, scale: 2, null: false

      t.timestamps
    end
    add_index :destinies, :nome, unique: true
  end
end
