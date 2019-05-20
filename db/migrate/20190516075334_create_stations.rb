class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :name
      t.integer :toho
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
