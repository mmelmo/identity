class CreateCraigslists < ActiveRecord::Migration
  def change
    create_table :craigslists do |t|
      t.string :email, null: false
    	t.string :password, null: false
    	t.string :phone_number
      t.timestamps null: false
    end
  end
end