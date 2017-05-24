require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:topic) { Topic.create!(name: name, description: description) }	
  let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
	let(:post) { topic.posts.create!(title: title, body: body, user: user) }
	let(:vote) { Vote.create!(value: 1, post: post, user: user) }

	it { is_expected.to belong_to(:post) }
	it { is_expected.to belong_to(:user) }

	it { is_expected.to validate_presence_of(:value) }
	it { is_expected.to validate_inclusion_of(:value).in_array([-1, 1]) }
	
end
