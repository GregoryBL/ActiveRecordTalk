class Review < ActiveRecord::Base
  belongs_to :reviewer, { class_name: :Person, foreign_key: :person_id }
  belongs_to :album

  validates :reviewer, uniqueness: { scope: :album,
    message: "can't review an album more than once." }

  validate :only_one_review_per_album

  def only_one_review_per_album
    this_album = self.album
    this_reviewer = self.reviewer
    previous_reviews = Review.where(album: this_album, reviewer: this_reviewer)
    if !previous_reviews.to_a.empty?
      errors.add(:reviewer, "already reviewed that album")
    end
  end
end
