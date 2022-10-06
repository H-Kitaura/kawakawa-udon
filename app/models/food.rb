class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :genre
  has_many :comments
  has_one_attached :image


  validates :title, presence: true
  validates :money, presence: true
  validates :concept, presence: true
  validates :image, presence: true, unless: :was_attached?
  validates :genre_id, numericality: { other_than: 1 } 


  def was_attached?
    self.image.attached?
  end

end
