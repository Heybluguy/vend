class CreateSnacks < ActiveRecord::Migration[5.1]
  def change
    create_table :snacks do |t|
      t.string :Name
      t.integer :price
    end
  end
end
