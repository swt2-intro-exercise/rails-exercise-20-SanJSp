class Paper < ApplicationRecord
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true
  validates :year, numericality: true

  has_and_belongs_to_many :authors
  serialize :authors, Array

  scope :find_by_year_published, -> (requested_year) { where(year: requested_year) if requested_year.present? }
end
