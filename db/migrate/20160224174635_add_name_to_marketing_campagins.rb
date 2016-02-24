class AddNameToMarketingCampagins < ActiveRecord::Migration
  def change
    add_column :marketing_campaigns, :name, :string
    remove_column :phone_calls, :date
  end
end
