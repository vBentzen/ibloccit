require 'rails_helper'

RSpec.describe Post, type: :model do
	let(:name) { Faker::StarWars.character }
	let(:description) { Faker::Lorem.paragraph }
	let(:title) { Faker::StarWars.character }
	let(:body) { Faker::Lorem.paragraph }
	let(:topic) { Topic.create!(name: name, description: description) }
	let(:post) { topic.posts.create!(title: title, body: body) }
	
	it { is_expected.to belong_to(:topic) }

	describe "attributes" do
		it "has title and body attributes" do
			expect(post).to have_attributes(title: title, body: body)
		end
	end
end
