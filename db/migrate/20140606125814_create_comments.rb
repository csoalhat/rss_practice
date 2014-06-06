class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :bookmarked_article
      t.text :body

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :bookmarked_article_id
  end
end
