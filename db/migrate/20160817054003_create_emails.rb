class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
    	t.string :username, null: false
    	t.string :password, null: false
    	t.integer :phone_number_id, null: false
      t.timestamps null: false
    end
  end
end
