class CreateCraigslists < ActiveRecord::Migration
  def change
    create_table :craigslists do |t|

      t.timestamps null: false
    end
  end
end
