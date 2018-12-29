class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.boolean :published, default: false
      t.integer :price
      t.integer :category_id

      t.timestamps
    end

    add_index :articles, :category_id
  end
end
