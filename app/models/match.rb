class Match < ApplicationRecord
  validates_presence_of :match_id,
                        :season,
                        :formatted_date,
                        :start_time,
                        :venue_city,
                        :localteam_name,
                        :visitorteam_name
end
