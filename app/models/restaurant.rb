class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, length: { minimum: 3 }, uniqueness: true

  def build_review(attributes = {}, user)
    review = reviews.build(attributes)
    review.user_id = user.id
    review
  end
end
