class ParserApi
  attr_accessor :url, :authorization, :from_date, :to_date
  KEY_DEFAULT = '565ec012251f932ea4000001fa542ae9d994470e73fdb314a8a56d76'
  DAYS_AFTER_DEFAULT = 3
  DAYS_BEFORE_DEFAULT = 3

  def initialize
    @url = 'http://api.football-api.com/2.0/matches?'
    @authorization = KEY_DEFAULT
    @from_date = (Time.now - DAYS_BEFORE_DEFAULT.day).strftime("%d.%m.%Y")
    @to_date = (Time.now + DAYS_AFTER_DEFAULT.day).strftime("%d.%m.%Y")
  end

  def get_matches
    http = Curl::Easy.perform(link)
    JSON.parse(http.body_str)
  end

  private

  def link
    link = @url
    link << "from_date=#{@from_date}"
    link << "&to_date=#{@to_date}"
    link << "&Authorization=#{@authorization}"
    link
  end

end