class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :articles, dependent: :destroy
  validates :username, presence: true
  validates :profile, length: { maximum: 150 }

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
