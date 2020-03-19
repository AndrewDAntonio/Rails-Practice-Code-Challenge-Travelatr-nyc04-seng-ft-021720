class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    def all_likes
       total = 0
        self.posts.each do |post|
            total + post.likes
        end
        total
    end

    def featured_post
        posts = self.posts
        posts.likes.max
    end

end
