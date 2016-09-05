class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :full_name
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
