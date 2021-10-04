class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.boolean :status
      t.string :nome

      t.timestamps
    end
  end
end
