class UpdatePhoneCalls < ActiveRecord::Migration
  def change
    rename_column :phone_calls, :length, :duration
    add_column :phone_calls, :call_sid, :string
  end
end
