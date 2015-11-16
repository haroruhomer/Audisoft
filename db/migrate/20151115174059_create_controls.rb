class CreateControls < ActiveRecord::Migration
  def change
    create_table :controls do |t|
      t.text :control
      t.references :riesgo, index: true, foreign_key: true
      t.text :recomendacion

      t.timestamps null: false
    end
  end
end
