class CreateRiesgos < ActiveRecord::Migration
  def change
    create_table :riesgos do |t|
      t.integer :valor

      t.timestamps null: false
    end
  end
end
