class Pin < ActiveRecord::Base
  attr_accessible :description, :image
  has_attached_file :image

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  							   content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                               size: { less_than: 10.megabytes }


  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"},
  							convert_options: {medium: "-quality 75"}

end

# has_attached_file :photo,
#     :styles => {
#       :"185x138" => {
#         :geometry => "185x138>"
#       }    },
#     :convert_options => {
#       :all => "-auto-orient",
#       :"185x138" => "-quality 75",