require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:my_post) { Post.create!(title: Faker::StarWars.character, body: Faker::Lorem.paragraph) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_post] to @posts" do
      get :index
      expect(assigns(:posts)).to eq([my_post])
    end
  end

end
