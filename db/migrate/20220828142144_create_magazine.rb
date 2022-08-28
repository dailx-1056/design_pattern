class CreateMagazine < ActiveRecord::Migration[6.1]
  def change
    create_table :magazines do |t|
      t.string :title
      t.string :desc
      t.integer :chapter, null: false, default: 1
      t.integer :quantity
      t.integer :borrowed

      t.timestamps
    end
  end
end
