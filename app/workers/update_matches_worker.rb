class UpdateMatchesWorker
  include Sidekiq::Worker

  def perform
    matches_parse = ParserApi.new
    Match.update_matches(matches_parse.get_matches)
    puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAA----------AAAAAAAAAAAAA'
  end
end
