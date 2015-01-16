class AddNameToFacebookUsers < ActiveRecord::Migration
  def change
    add_column :facebook_users, :name, :string
  end
end
