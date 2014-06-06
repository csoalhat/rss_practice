class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :feed
      t.string :name

      t.timestamps
    end
    add_index :categories, :feed_id
  end
end
