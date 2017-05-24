require 'rails_helper'

RSpec.describe Post, type: :model do
	let(:name) { Faker::StarWars.character }
	let(:description) { Faker::Lorem.paragraph }
	let(:title) { Faker::StarWars.character }
	let(:body) { Faker::Lorem.paragraph }
	let(:topic) { Topic.create!(name: name, description: description) }
	let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
	let(:post) { topic.posts.create!(title: title, body: body, user: user) }
	
	it { is_expected.to belong_to(:topic) }
	it { is_expected.to belong_to(:user) }

	it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_presence_of(:topic) }
  it { is_expected.to validate_presence_of(:user) }

  it { is_expected.to validate_length_of(:title).is_at_least(5) }
  it { is_expected.to validate_length_of(:body).is_at_least(20) }

	describe "attributes" do
		it "has title, body and user attributes" do
			expect(post).to have_attributes(title: title, body: body, user: user)
		end
	end
end
