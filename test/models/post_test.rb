require "test_helper"

describe Post do
  let(:title) { "Primer post"}
  describe "Post Valid" do
    let(:post) { Post.new(title: title) }

    it "save valid post" do
      post.save!
      post.reload
      post.title.must_equal(title)
      Post.count.must_equal(1)
    end
  end

  describe "Post no valid" do
    let(:post) { Post.new }

    it "Don't save a invalid post" do
      post.save.must_equal false
      Post.count.must_equal(0)
    end
  end

  describe "#slugify" do
    let(:post) { Post.new(title: title) }

    it "generate and save slug" do
      post.save!
      post.reload

      post.title_slug.must_equal(title.parameterize)
      Post.count.must_equal(1)
    end
  end
end
