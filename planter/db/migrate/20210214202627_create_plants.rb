class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
