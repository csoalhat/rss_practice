class CreateCategoryFeedJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_feeds, id: false do |t|
      t.references :category
      t.references :feed

      t.timestamps
    end
  end
end
