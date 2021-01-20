class RemoveTitleFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :title, :string
    remove_column :users, :opinion, :string
  end
end
