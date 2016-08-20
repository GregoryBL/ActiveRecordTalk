class Person < ActiveRecord::Base
  has_many :reviews
  has_many :comments

  has_many :reviewed_albums, through: :reviews, source: :album
end
