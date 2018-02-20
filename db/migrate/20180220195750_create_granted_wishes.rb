class CreateGrantedWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :granted_wishes do |t|
      t.string :winner
      t.text :requirement
      t.text :fulfillment
      t.text :info

      t.timestamps
    end
  end
end
