class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :event_date
    	t.string :venue_name
    	t.string :venue_city
    	t.string :venue_state
    	t.string :artists
    	t.string :ticket_url
    	t.references :user, index: true, foreign_key: true
    end
  end
end
