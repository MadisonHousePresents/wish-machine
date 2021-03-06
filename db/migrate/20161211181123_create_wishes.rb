class CreateWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.string :participant_requirement
      t.string :ef_fulfillment
      t.boolean :approved, null: false, default: false
      t.timestamps
    end
  end
end
