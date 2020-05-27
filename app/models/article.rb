class Article < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  
  
  def user_liked(user_id)
   likes.where(user_id: user_id).exists?
  end
end
