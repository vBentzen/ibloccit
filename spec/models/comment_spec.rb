require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:topic) { Topic.create!(name: Faker::StarWars.character, description: Faker::Lorem.paragraph) }
   let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
   let(:post) { topic.posts.create!(title: Faker::Name.name, body: Faker::Lorem.paragraph, user: user) }
	let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

	describe "attributes" do 
		it "has a body attribute" do
			expect(comment).to have_attributes(body: "Comment Body", post: post)
		end
	end
end

