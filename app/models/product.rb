# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  price       :decimal(8, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  genre       :string
#  detail      :string
#

class Product < ActiveRecord::Base
  has_many :line_items
  has_many :comments, dependent: :destroy
  SCORE = ['1','2','3','4','5','6','7','8','9','10']

  before_destroy :ensure_not_referenced_by_any_line_item
  
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'はGIF・JPG・PNG画像のURLじゃないといかんバイ'
  }

  validates :title, length: {
    minimum: 1,
    message: "%{count}文字以上で入力せんと！！"
  }

  private

  # この商品を参照している品目がないことを確認する
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, "品目があるよ～ん")
      return false
    end
  end
end

