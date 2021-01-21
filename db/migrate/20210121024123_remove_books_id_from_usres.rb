class RemoveBooksIdFromUsres < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :books_id, :integer
  end
end
