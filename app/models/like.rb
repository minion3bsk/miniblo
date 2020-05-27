class Like < ApplicationRecord
  belongs_to :article, counter_cache: :like_count
  belongs_to :user
end
