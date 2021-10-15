class CreateCancellationReasons < ActiveRecord::Migration[6.1]
  def change
    create_table :cancellation_reasons do |t|
      t.boolean :status
      t.string :nome

      t.timestamps
    end
    add_index :cancellation_reasons, :nome, unique: true
  end
end
