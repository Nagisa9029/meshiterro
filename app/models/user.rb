class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attachment :profile_image
  has_many :post_images
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
end