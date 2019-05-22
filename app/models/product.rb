class Product
  include Mongoid::Document

  SIZES = %w(XS S M L XL XXL)
  COLORS = %w(blue red white green yellow)

  mount_uploader :photo, PhotoUploader
  field :name, type: String
  field :desc, type: String
  field :credits, type: Integer
  field :discount, type: Integer
  field :colors, type: Array
  field :sizes, type: Array
  field :photo

end