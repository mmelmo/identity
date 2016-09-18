class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    #	t.string :name, null: false
    #	t.date :dob, null: false
     	t.integer :person_id, null: false
    	t.string :username, null: false
    	t.string :password, null: false
    	t.integer :phone_number_id, null: false
      t.timestamps null: false
    end
  end
end
