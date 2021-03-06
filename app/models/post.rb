class Post < ApplicationRecord
  acts_as_votable


  mount_uploader :image, ImageUploader
  validates :title, :content, presence: true
  belongs_to :user
end
