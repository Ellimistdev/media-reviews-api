class User < ApplicationRecord
  has_many :reviews
  has_many :reviewed_media, through: :reviews, source: :medium
  has_many :views
  has_many :viewed_media, through: :views, source: :medium
  has_secure_password
end