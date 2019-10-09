class AddZipCodeAndLocalToUsers < ActiveRecord::Migration[5.0]
  def change
		add_column :users, :zip_code, :string
		add_column :users, :local, :boolean
  end
end
