require 'rails_helper'

RSpec.describe Comment, type: :model do
	let(:body) { Faker::ChuckNorris.fact }
  let(:topic) { Topic.create!(name: Faker::Name.name, description: Faker::Lorem.paragraph) }
  let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
  let(:post) { topic.posts.create!(title: Faker::Name.name, body: Faker::Lorem.paragraph, user: user) }
	let(:comment) { Comment.create!(body: body, post: post, user: user) }

	it { is_expected.to belong_to(:post) }
	it { is_expected.to belong_to(:user) }

	it { is_expected.to validate_presence_of(:body) }
	it { is_expected.to validate_length_of(:body).is_at_least(5) }

	describe "attributes" do 
		it "has a body attribute" do
			expect(comment).to have_attributes(body: body, post: post)
		end
	end
end

