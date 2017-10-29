class Article < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  validates :status, inclusion: { in: Article.statuses.keys }

  def toggle_status!
    return published! if draft?
    return draft!
  end
end
