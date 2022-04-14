require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Model validations" do
    it "post must have a user" do 
      post = build(:post, user: nil)

      # NOTE: the ordering of these first two expectations here is important:
      # before valid? is run, errors are always run. valid?() populates the
      # errors the first time it's called
      expect(post.valid?).to be_falsey
      expect(post.errors.empty?).to be_falsey
      expect(post.errors.first.attribute).to eql(:user)
      expect(post.errors.first.options).to eql({:message=>:required})
    end

    it "posts must have a non-empty title" do 
      post = build(:post, title: nil)

      # see note in the first test in this file.
      expect(post.valid?).to be_falsey
      expect(post.errors.empty?).to be_falsey
      expect(post.errors.first.attribute).to eql(:title)
    end

    it "posts must have a non-empty body" do 
      post = build(:post, body: nil)

      # see note in the first test in this file.
      expect(post.valid?).to be_falsey
      expect(post.errors.empty?).to be_falsey
      expect(post.errors.first.attribute).to eql(:body)
    end
  end
end
