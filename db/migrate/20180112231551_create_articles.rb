class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.date :create_date
      t.string :tag

      t.timestamps
    end
  end
end
