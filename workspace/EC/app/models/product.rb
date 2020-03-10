class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category

  def self.search(productName)
    @products = Product.all
    @products = @products.where('name LIKE ?',"%#{productName}%")
    return @products
  end
end
