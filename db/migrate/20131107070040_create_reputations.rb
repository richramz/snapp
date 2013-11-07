class CreateReputations < ActiveRecord::Migration
  def change
    create_table :reputations do |t|
      t.integer :score

      t.timestamps
    end
  end
end
