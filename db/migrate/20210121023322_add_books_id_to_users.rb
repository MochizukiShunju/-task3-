class AddBooksIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :books_id, :integer
  end
end
