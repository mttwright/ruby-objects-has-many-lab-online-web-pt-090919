class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.collect do |post|
      post if post.author.name == self.name
    end
  end
  
  def add_post
  end
  
end