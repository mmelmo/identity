class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    		t.string :name, null: false
    		t.date :dob, null: false
    		t.string :gender, null: false
    		t.integer :phone_number, null: false
    		t.string :location, null: false

      	t.timestamps null: false
    end
  end
end
