class CreateFacebooks < ActiveRecord::Migration
  def change
    create_table :facebooks do |t|
    	t.string :email, null: false
    	t.string :password, null: false
    	t.integer :person_id, null: false
      t.timestamps null: false
    end
  end
end
