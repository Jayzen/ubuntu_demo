class Article < ApplicationRecord
  belongs_to :category, optional: true
  #def self.published
  #  where(published: true)
  #end
  scope :published, -> { where(published: true)}
  scope :published_price, -> { published.where("price > 20")}
end
