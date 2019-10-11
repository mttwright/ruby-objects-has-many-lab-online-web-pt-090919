class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.collect do |posts|
      posts if posts.author.name == self.name
    end
  end
  
  def add_post(posts)
    posts.author = self
  end
  
  def add_post_by_title(title)
    x = Post.new(title)
    self.add_post(x)
  end
  
  def self.post_count
    Post.all.length
  end
  
end