class Party < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_attached_file :image, styles: {medium: "300x300>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
