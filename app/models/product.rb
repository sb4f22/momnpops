class Product < ActiveRecord::Base
 
  attr_accessor :product_quantity, :product_picture, :tag_line
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true
  validates :price, presence: true
  mount_uploader :picture, PictureUploader
  validate :picture_size
  validate :description, presence: true


  private

   # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end



end
