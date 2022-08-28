class CreateBook < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :desc
      t.integer :quantity
      t.integer :borrowed

      t.timestamps
    end
  end
end
