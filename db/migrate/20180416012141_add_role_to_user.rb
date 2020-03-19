# frozen_string_literal: true

class AddRoleToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :string, default: 'Non-Admin' # Lab 10
  end
end
