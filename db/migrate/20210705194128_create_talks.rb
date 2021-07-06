class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.time :time
      t.date :date
      t.integer :capacity
      t.references :category, null: false, foreign_key: true
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
