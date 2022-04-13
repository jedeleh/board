require 'rails_helper'
require 'pry'

RSpec.describe Comment, type: :model do

  it "can do shit sometimes, if asked nicely" do 
    user = create(:user)
    post = create(:post, user: user)
    puts post.inspect
    puts post.user.inspect
    puts post.comments.inspect

    comment = create(:comment, post: post, user: user)

  end
end
