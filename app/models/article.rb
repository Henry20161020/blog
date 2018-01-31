class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true
  validates :tag, presence: true
  validates :brief, presence: true
  validates :img_url, presence: true
  validates :author, presence: true

  def self.search(search_term)
    if ENV['RAILS_ENV']=="production"
      Article.where("title ilike ?", "%#{search_term}%")
    else
      Article.where("title LIKE ?", "%#{search_term}%")
    end
  end
end
