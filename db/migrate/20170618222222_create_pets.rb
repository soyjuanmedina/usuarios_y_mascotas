class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :nombre
      t.decimal :edad
      t.integer :sexo
      t.integer :tipo
      t.boolean :alive, :default => true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
