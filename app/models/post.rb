class Post < ActiveRecord::Base
  has_many :comments
  has_many :post_tags
  has_many :tags, -> { distinct }, through: :post_tags, :dependent => :destroy
  validates :title, :body, presence: true

  def init_tags(tags_list)
    self.tags = []
    tags_list.each do |t|
      self.tags << Tag.find_or_initialize_by(:title => t)
    end
  end

  def self.filter_by_tag(tag)
    if tag.present?
      includes(:tags).where("tags.id = ?", tag).references(:tags)
    else
      all
    end
  end

  default_scope order('posts.created_at DESC')
end