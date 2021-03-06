# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140606130012) do

  create_table "articles", :force => true do |t|
    t.integer  "feed_id"
    t.string   "title"
    t.string   "image"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "articles", ["feed_id"], :name => "index_articles_on_feed_id"

  create_table "bookmarked_articles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.text     "thought"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bookmarked_articles", ["article_id"], :name => "index_bookmarked_articles_on_article_id"
  add_index "bookmarked_articles", ["user_id"], :name => "index_bookmarked_articles_on_user_id"

  create_table "categories", :force => true do |t|
    t.integer  "feed_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["feed_id"], :name => "index_categories_on_feed_id"

  create_table "categories_feeds", :id => false, :force => true do |t|
    t.integer  "category_id"
    t.integer  "feed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "bookmarked_article_id"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "comments", ["bookmarked_article_id"], :name => "index_comments_on_bookmarked_article_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "feeds", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "friendships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "friendships", ["friend_id"], :name => "index_friendships_on_friend_id"
  add_index "friendships", ["user_id"], :name => "index_friendships_on_user_id"

  create_table "profiles", :force => true do |t|
    t.text     "bio"
    t.string   "city"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "subscriptions", :force => true do |t|
    t.integer  "feed_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "subscriptions", ["feed_id"], :name => "index_subscriptions_on_feed_id"
  add_index "subscriptions", ["user_id"], :name => "index_subscriptions_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
