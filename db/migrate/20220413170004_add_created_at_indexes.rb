class AddCreatedAtIndexes < ActiveRecord::Migration[7.0]
  def change
    # for sorting purposes
    add_index :posts, :created_at
    add_index :comments, :created_at
  end
end
