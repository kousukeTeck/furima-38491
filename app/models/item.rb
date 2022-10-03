class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  #belongs_to:user
  #has_one:order
  has_one_attached :image

  belongs_to :category
  belongs_to :prefecture
  belongs_to :item_status
  belongs_to :cost
  belongs_to :shopping_date

  with_options presence: true do
    validates :user_id
    validates :image
    validates :name
    validates :description
    validates :category_id
    validates :status_id
    validates :cost_id
    validates :prefecture_id
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :shopping_date_id
  end

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :prefecture_id
    validates :status_id
    validates :cost_id
    validates :shopping_date_id
  end
end
