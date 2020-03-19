class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def avg_age
        blogs = self.bloggers.uniq
        ages = blogs.map{|blogger| blogger.age}
        red_age = ages.reduce{|sum, age| sum + age}
        avg = red_age/blogs.length
    end
end
