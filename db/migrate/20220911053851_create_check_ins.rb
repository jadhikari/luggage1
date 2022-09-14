class CreateCheckIns < ActiveRecord::Migration[7.0]
  def change
    create_table :check_ins do |t|
      t.integer :luggage_num
      t.string :name
      t.integer :room_num
      t.integer :people_num
      t.datetime :received_date_time
      t.string :received_by
      t.datetime :checkout_date_time
      t.string :checkout_by
      t.text :remarks

      t.timestamps
    end
  end
end
