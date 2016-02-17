class CreateMarketingCampaigns < ActiveRecord::Migration
  def change
    create_table :marketing_campaigns do |t|
      t.boolean :active

      t.timestamps null: false
    end
  end
end
