class CreateControlEstados < ActiveRecord::Migration
  def change
    create_table :control_estados do |t|
      t.references :control, index: true, foreign_key: true
      t.references :estado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
