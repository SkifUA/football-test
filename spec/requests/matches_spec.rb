require 'rails_helper'

RSpec.describe 'Matches API', type: :request do

  let!(:match) { create(:match) }

  # Test suite for GET /todos
  describe 'GET /api/v1/matches' do
    # make HTTP get request before each example
    before { get '/api/v1/matches' }

    it 'returns matches' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/matches/:match_id' do
    # make HTTP get request before each example
    before { get "/api/v1/matches/#{match.match_id}" }

    it 'returns match' do
      # Note `json` is a custom helper to parse JSON responses

      expect(json).not_to be_empty
      expect(json['match_id']).to eq(match.match_id)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end