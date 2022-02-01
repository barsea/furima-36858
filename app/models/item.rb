class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  # has_one :order # 後で

  validates :title, presence: true
  validates :description, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :condition_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :delivery_charge_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :prefecture_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :days_to_ship_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}
end