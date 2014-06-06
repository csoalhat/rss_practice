class CreateBookmarkedArticles < ActiveRecord::Migration
  def change
    create_table :bookmarked_articles do |t|
      t.references :user
      t.references :article
      t.text :thought

      t.timestamps
    end
    add_index :bookmarked_articles, :user_id
    add_index :bookmarked_articles, :article_id
  end
end
