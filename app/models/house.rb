class House < ActiveRecord::Base
  validates :name, presence: true

  has_many :characters
end
