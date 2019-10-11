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
    
  end
  
end