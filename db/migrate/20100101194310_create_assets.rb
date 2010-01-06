class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :asset_id
      t.string :name
      t.text :description
      t.date :purchase_date

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
