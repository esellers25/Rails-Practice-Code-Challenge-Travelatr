class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :age, numericality: {greater_than: 0}
    validates :name, uniqueness: true  
    validates :bio, length: {minimum: 30} 

    def featured_post
        post = self.posts.max_by {|post| post.likes}
        post.title
    end 

end
