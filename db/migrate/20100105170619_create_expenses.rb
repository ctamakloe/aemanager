class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.decimal :amount
      t.integer :asset_id
      t.text :remarks
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
