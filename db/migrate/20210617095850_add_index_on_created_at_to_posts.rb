class AddIndexOnCreatedAtToPosts < ActiveRecord::Migration[6.1]
  def change
    add_index :posts, :created_at
  end
end
