class CreateComments < ActiveRecord::Migration
  def change
    drop_table :comments
    create_table :comments do |t|
      t.string :name
      t.integer :score
      t.text :body
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
