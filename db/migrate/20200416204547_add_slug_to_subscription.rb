class AddSlugToSubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :uuid, :string, unique: true, index: true
    add_column :subscriptions, :slug, :string, unique: true, index: true

    Subscription.all.each do |sub|
      uuid = SecureRandom.uuid
      sub.update_column(:uuid, uuid)
      sub.update_column(:slug, uuid)
    end
  end
end
