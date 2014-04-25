class Tag < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  has_many :posts, through: :post_tags
end
