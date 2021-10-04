class CreateModalities < ActiveRecord::Migration[6.1]
  def change
    create_table :modalities do |t|
      t.boolean :status
      t.string :nome

      t.timestamps
    end

    add_index :modalities, :nome, unique: true
  end
end
