class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :sigil_url

      t.timestamps null: false
    end
  end
end
