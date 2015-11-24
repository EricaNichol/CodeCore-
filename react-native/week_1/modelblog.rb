class Blog

  attr_accessor :comment_array

def initialize
  @comment_array = []
end

def display
 @comment_array.each do |x|
   puts x
end
end

def post(comments)
  @comment_array << comments
   "#{comments} posted, Thank you"
end

def delete_post(comments)
  if @comment_array == 0
    puts "No such comment"
  else
  @comment_array.delete(comments)
  "#{comments} deleted"
end
end
end

class Comments

  attr_accessor :comment

  def initialize(comment)
    @comment = comment
    comment.to_s
  end

  def see
    puts @comment
  end

end
