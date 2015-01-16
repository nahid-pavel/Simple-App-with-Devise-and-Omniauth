class AddFirstNameToFacebookUsers < ActiveRecord::Migration
  def change
    add_column :facebook_users, :first_name, :string
  end
end
