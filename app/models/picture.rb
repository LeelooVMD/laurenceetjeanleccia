class Picture < ApplicationRecord
  has_many :collections, through: :inbetween
  belongs_to :inbetween
end
