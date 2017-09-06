class AddWishReasonToWishes < ActiveRecord::Migration[5.0]
  def change
		add_column :wishes, :wish_reason, :text
  end
end
