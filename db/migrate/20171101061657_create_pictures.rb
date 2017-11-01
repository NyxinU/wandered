class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :url, null: false
      t.integer :post_id
      t.integer :trip_id

      t.timestamps
    end
    add_index :pictures, :post_id
    add_index :pictures, :trip_id
  end
end
