class Post < ApplicationRecord
  belongs_to :user
  #delegate :user, to :post    //it is unnecessary since I used @post.user.name in show.html.erb

  validates :title, :body, presence: true
end