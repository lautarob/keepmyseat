class CreateTurns < ActiveRecord::Migration[5.1]
  def change
    create_table :turns do |t|
      t.references :category, foreign_key: true
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :turn_number
      t.integer :status, :null => false, :default => 0

      t.timestamps
    end
  end
end
