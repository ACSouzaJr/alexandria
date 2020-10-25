class Book < ApplicationRecord
  belongs_to :publisher, optional: true
  belongs_to :author

  has_one_attached :cover

  validates :title, presence: true
  validates :released_on, presence: true
  validates :author, presence: true

  validates :isbn_10, presence: true, length: { is: 10 }, uniqueness: true
  validates :isbn_13, presence: true, length: { is: 13 }, uniqueness: true

  validates :cover, content_type: ['image/png', 'image/jpg', 'image/jpeg'] #, attached: true
end
