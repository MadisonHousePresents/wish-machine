class AddCityAndStateToUsers < ActiveRecord::Migration[5.0]
  def change
		remove_column :wishes, :wish_reason, :text
		add_column :users, :city, :string
		add_column :users, :state, :string
  end
end
