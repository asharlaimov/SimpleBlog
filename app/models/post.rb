class Post < ActiveRecord::Base
  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags
  validates :title, :body, presence: true

  def self.tag_list
    tags.map(&:title)
  end
end
