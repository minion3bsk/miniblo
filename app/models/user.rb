class User < ApplicationRecord
  has_many :articles
  mount_uploader :image, ImageUploader
  validates :username, presence: true

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
