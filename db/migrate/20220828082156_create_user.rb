class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :full_name
      t.string :encrypted_password

      t.timestamps
    end
  end
end
