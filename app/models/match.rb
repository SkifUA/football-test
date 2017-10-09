class Match < ApplicationRecord
  validates_presence_of :match_id,
                        :season,
                        :formatted_date,
                        :start_time,
                        :venue_city

  def self.update_matches(matches)
    matches.each do |m|
      match = Match.find_by(match_id: m['id']) || Match.new
      match.match_id = m['id']
      match.season = m['season']
      match.formatted_date = m['formatted_date']
      match.start_time = m['time']
      match.venue_city = m['venue_city']
      match.localteam_name = m['localteam_name']
      match.visitorteam_name = m['visitorteam_name']
      match.localteam_score = m['localteam_score'] if m['localteam_score'].present?
      match.visitorteam_score = m['visitorteam_score'] if m['visitorteam_score'].present?
      match.save!
    end

  end
end
