class Cine < ApplicationRecord
  has_many :movie
  mount_uploader :picture, PictureUploader
end
