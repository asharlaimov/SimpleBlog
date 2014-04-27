class Tag < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  has_many :post_tags
  has_many :posts, through: :post_tags

  def self.tag_list
    select(:title).map(&:title)
  end
end
