class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :feed
      t.string :title
      t.string :image
      t.text :content

      t.timestamps
    end
    add_index :articles, :feed_id
  end
end
