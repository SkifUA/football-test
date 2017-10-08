class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :match_id, index: true, unique: true
      t.date :formatted_date
      t.string :season
      t.string :venue_city
      t.time :start_time
      t.string :localteam_name
      t.string :visitorteam_name
      t.integer :localteam_score
      t.integer :visitorteam_score

      t.timestamps
    end
  end
end
