class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :price
      t.string :size
      t.string :description
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
