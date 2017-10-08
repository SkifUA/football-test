class Api::V1::MatchesController < ApplicationController
  def index
    @matches = Match.all

    render json: @matches
  end

  def show
    @match = Match.find_by(match_id: params[:match_id])

    render json: @matches
  end
end
