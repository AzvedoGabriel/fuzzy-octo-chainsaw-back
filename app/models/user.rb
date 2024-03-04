class User < ApplicationRecord
  has_secure_password
  has_many :user_movies
  has_many :movies, through: :user_movies
end
