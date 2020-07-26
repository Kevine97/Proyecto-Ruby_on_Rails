class Movie < ApplicationRecord
  belongs_to :cine
  mount_uploader :picture, PictureUploader
end
