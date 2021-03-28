class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :voice_url
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
