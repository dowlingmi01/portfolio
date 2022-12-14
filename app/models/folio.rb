class Folio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.management
    where(subtitle: "Product Management")
  end

  scope :product_development, -> { where(subtitle: "Product Development") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end
end
