class AddLastNameToFacebookUsers < ActiveRecord::Migration
  def change
    add_column :facebook_users, :last_name, :string
  end
end
