class CreateArticleCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :article_categories do |t|
      t.timestamps
    end
  end
end
