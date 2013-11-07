class AddIdsToTagging < ActiveRecord::Migration
  def change
    add_column :taggings, :tag_id, :integer
    add_column :taggings, :question_id, :integer
  end
end
