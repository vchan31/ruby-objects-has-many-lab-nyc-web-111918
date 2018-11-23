class Author

attr_accessor :name , :posts
@@all_posts = []

def initialize (name)
@name = name
@posts = []
end

def add_post(post)
post.author = self

@posts << post 
@@all_posts << post
end

def add_post_by_title (post_w_title)
new_post = Post.new(post_w_title)
new_post.author = self
@posts << new_post
@@all_posts << new_post
end

def self.post_count
@@all_posts.length
end

end