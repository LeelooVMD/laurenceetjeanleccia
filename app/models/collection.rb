class Collection < ApplicationRecord
  has_many :pictures, through: :inbetween
  belongs_to :inbetween
end
