class ChangeUsers < ActiveRecord::Migration
  def change
    rename_column :users, :token, :session_token
    add_column :users, :activation_token, :string
  end
end
