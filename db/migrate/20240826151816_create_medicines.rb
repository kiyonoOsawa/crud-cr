class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.integer :medicine_id
      t.string :name
      t.integer :amount
      
      t.timestamps
    end
  end
end
