class Api::V1::MatchesController < ApplicationController
  def_param_group :records do
    formats ['json']
    error code: 404, desc: "Not Found"
    error code: 422, desc: "Unprocessable Entity"
  end

  api :GET, '/matches', 'All matches'
  param_group :records
  def index
    UpdateMatchesWorker.perform_async
    @matches = Match.all
    json_response @matches
  end

  api :GET, "/matches/:match_id", "Show match"
  param_group :records
  def show
    @match = Match.find_by(match_id: params[:match_id])
    json_response @match
  end
end
