class Place < ApplicationRecord
  has_many :dishes, dependent: :destroy
  has_one :cart, dependent: :destroy

  has_attached_file :image,
                    styles: { medium: '300x300>', thumb: '100x100>'},
                    default_url: 'missing.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpeg','image/jpg', 'image/gif', 'image/png']

end
