require 'rails_helper'

describe Post do
  it 'should validate presence of title' do
    post = Post.new
    post.valid?
    expect(post.errors.messages[:title]).to include "Can't be blank."
  end

  it 'should validate presence of conent' do
  	post = Post.new
  	post.valid?
  	expect(post.errors.messages[:content]).to include "Can't be blank."
  end
end
