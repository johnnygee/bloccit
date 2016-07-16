class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
end

# Favorite.create(user: post.user, post: self)
# favorites.create(user: post.user)
