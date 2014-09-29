class Post < ActiveRecord::Base
  validates :title, presence: true

  before_save :slugify_title_slug

  private

  def slugify_title_slug
    self.title_slug = title.parameterize
  end
end
