class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :photo_url
      t.string :status
      t.references :house, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
