class CreatePostCategories < ActiveRecord::Migration[4.2]
  def change
    create_table :post_categories do |t|
      t.belongs_to :post, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
