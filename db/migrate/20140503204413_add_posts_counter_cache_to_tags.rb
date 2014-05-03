class AddPostsCounterCacheToTags < ActiveRecord::Migration
  def self.up
    add_column :tags, :posts_count, :integer, :default => 0
    Tag.all.each do |tag|
      tag.update_attribute(:posts_count, tag.post_tags.length)
      tag.save
    end
  end

  def self.down
    remove_column :tags, :posts_count
  end
end