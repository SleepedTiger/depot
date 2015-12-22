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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
    product = Product.new
    # 正しくないことを確認する時
    assert product.invalid?
    # 正しいことを確認する時
    # assert product.valid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end

  test "product price must be positive" do 
    product = Product.new(title: "タイトル",
                          description: "ディスクリプション",
                          image_url: "imageurl.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal "must be greater than or equal to 0.01",
                 product.errors[:price].join(';')

    product.price = 0
    assert product.invalid?
    assert_equal "must be greater than or equal to 0.01",
                 product.errors[:price].join(';')

    product.price = 0.009
    assert product.invalid?
    assert_equal "must be greater than or equal to 0.01",
                 product.errors[:price].join(';')

    product.price = 0.01
    assert product.valid?

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(title: "タイトル",
                description: "ディスクリプション",
                price: 1,
                image_url: image_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |name|
      assert new_product(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_product(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "product is not valid without a unique title" do 
    product = Product.new(title: products(:ruby).title,
                          description: "yyy",
                          price: 1,
                          image_url: "fred.gif")

    assert !product.save
    assert_equal "has already been taken", product.errors[:title].join(';')
  end
end
