class AddUsernametoUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
  end
end
