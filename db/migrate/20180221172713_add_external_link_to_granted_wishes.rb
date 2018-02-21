class AddExternalLinkToGrantedWishes < ActiveRecord::Migration[5.0]
  def change
    add_column :granted_wishes, :external_link, :string
  end
end
