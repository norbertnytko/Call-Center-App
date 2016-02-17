class CreatePhoneCalls < ActiveRecord::Migration
  def change
    create_table :phone_calls do |t|
      t.date :date
      t.integer :length
      t.references :contact

      t.timestamps null: false
    end
  end
end
