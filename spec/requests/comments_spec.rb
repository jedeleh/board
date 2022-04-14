require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe "POST /create" do
    # it "returns http success" do
    #   user = create(:user)
    #   post = create(:post, user: user)
    #   parameters = {
    #     user: user.id,
    #     post: post.id,
    #     body: "a neat story"
    #   }
      
    #   post "/comments/create", params: parameters, format: :json
    #   post :create, params: parameters, format: :json 
    #   expect(response).to have_http_status(:success)
    # end
    pending
  end

  describe "GET /update" do
    it "returns http success" do
      post "/comments/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/comments/show"
      expect(response).to have_http_status(:success)
    end
  end
end
