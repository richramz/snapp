class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.text :text
      t.string :response

      t.timestamps
    end
  end
end
