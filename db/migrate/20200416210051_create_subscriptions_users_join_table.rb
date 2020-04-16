class CreateSubscriptionsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :subscriptions, :users
  end
end
