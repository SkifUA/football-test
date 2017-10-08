class UpdateMatchesWorker
  include Sidekiq::Worker

  def perform
    matches_parse = ParserApi.new
    Match.update_matches(matches_parse.get_matches)
  end
end
