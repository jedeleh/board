require 'rails_helper'
require 'pry'

RSpec.describe Comment, type: :model do
  describe "Model validations" do
    it "comments must have a user" do 
      comment = build(:comment, user: nil)

      # NOTE: the ordering of these first two expectations here is important:
      # before valid? is run, errors are always run. valid?() populates the
      # errors the first time it's called
      expect(comment.valid?).to be_falsey
      expect(comment.errors.empty?).to be_falsey
      expect(comment.errors.first.attribute).to eql(:user)
      expect(comment.errors.first.options).to eql({:message=>:required})
    end

    it "comments must have a non-empty body" do 
      comment = build(:comment, body: nil)

      # see note in the first test in this file.
      #binding.pry
      expect(comment.valid?).to be_falsey
      expect(comment.errors.empty?).to be_falsey
      expect(comment.errors.first.attribute).to eql(:body)
    end

    it "comments must belong to a post" do
      comment = build(:comment, post: nil)

      # see note in the first test in this file.
      expect(comment.valid?).to be_falsey
      expect(comment.errors.empty?).to be_falsey
      expect(comment.errors.first.attribute).to eql(:post)
    end
  end
end
