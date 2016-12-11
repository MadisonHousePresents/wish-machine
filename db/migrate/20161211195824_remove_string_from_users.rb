class RemoveStringFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :string, :string
		add_column :users, :terms_accepted, :boolean
  end
end
