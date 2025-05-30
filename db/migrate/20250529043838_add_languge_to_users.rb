class AddLangugeToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :languge, :integer, default: 0, null: false
  end
end
