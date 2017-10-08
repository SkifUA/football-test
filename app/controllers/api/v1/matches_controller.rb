class Api::V1::MatchesController < ApplicationController
  include Response
  include ExceptionHandler
  def index
    matches_parse = ParserApi.new
    Match.update_matches(matches_parse.get_matches)
    @matches = Match.all
    json_response @matches
  end

  def show
    @match = Match.find_by(match_id: params[:match_id])
    json_response @matches
  end
end
