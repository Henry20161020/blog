class AddColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :brief, :text
    add_column :articles, :img_url, :string
    add_column :articles, :author, :string
  end
end
