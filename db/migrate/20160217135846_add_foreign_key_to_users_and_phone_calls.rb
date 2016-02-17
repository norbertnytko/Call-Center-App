class AddForeignKeyToUsersAndPhoneCalls < ActiveRecord::Migration
  def change
    add_reference :users, :marketing_campaign, index: true
    add_reference :phone_calls, :user, index: true
  end
end
