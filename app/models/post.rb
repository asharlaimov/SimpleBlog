class Post < ActiveRecord::Base
  has_many :comments
  has_many :post_tags
  has_many :tags, -> { distinct }, through: :post_tags
  validates :title, :body, presence: true

  def init_tags(tags_list)
    self.tags = []
    tags_list.each do |t|
      self.tags << Tag.find_or_initialize_by(:title => t)
    end
  end
end
