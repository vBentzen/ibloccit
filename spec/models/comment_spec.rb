require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:topic) { Topic.create!(name: Faker::StarWars.character, description: Faker::Lorem.paragraph) }
  let(:post) { topic.posts.create!(title: Faker::StarWars.character, body: Faker::Lorem.paragraph) }
	let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

	describe "attributes" do 
		it "has a body attribute" do
			expect(comment).to have_attributes(body: "Comment Body", post: post)
		end
	end
end

