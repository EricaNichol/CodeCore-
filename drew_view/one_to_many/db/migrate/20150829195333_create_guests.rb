class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.references :hotel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
