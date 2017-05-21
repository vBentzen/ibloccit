require 'rails_helper'

RSpec.describe Topic, type: :model do
	let(:name) { Faker::StarWars.character }
  let(:description) { Faker::Lorem.paragraph }
  let(:public) { true }
  let(:topic) { Topic.create!(name: name, description: description, public: public) }

  describe "attributes" do
    it "has name, description, and public attributes" do
      expect(topic).to have_attributes(name: name, description: description, public: public)
    end

    it "is public by default" do
    	expect(topic.public).to be(true)
  	end
  end
end
