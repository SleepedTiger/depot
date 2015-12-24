class CreateWarnings < ActiveRecord::Migration
  def change
    create_table :warnings do |t|

      t.timestamps null: false
    end
  end
end
