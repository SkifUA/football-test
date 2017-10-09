require 'rails_helper'

RSpec.describe Api::V1::MatchesController, type: :controller do
  let!(:match) { create(:match) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { match_id: match.match_id }
      expect(response).to have_http_status(:success)
    end
  end

end
