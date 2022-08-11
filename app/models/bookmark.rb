class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  # validates :movie, uniqueness: { scoope: :list }
  # validates_associated :movie, :list
  validates_uniqueness_of :movie_id, scope: :list_id
end
