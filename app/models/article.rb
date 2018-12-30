class Article < ApplicationRecord
  belongs_to :category, optional: true
  has_many :comments, dependent: :destroy

  #default_scope { where(published: true)}
end
