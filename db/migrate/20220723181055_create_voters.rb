class CreateVoters < ActiveRecord::Migration[7.0]
  def change
    create_table :voters do |t|
      t.string :sos_voter_id, index: true
      t.string :voter_reg_id, index: true
      t.string :voter_status
      t.string :party_code
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :name_suffix
      t.integer :street_number
      t.string :street_building
      t.string :street_direction
      t.string :street_name
      t.string :street_type
      t.string :street_postdir
      t.string :unit_type
      t.string :unit
      t.string :city
      t.string :zip
      t.string :zip4
      t.string :mail1
      t.string :mail2
      t.string :mail3
      t.string :mail_city
      t.string :mail_state
      t.string :mail_zip
      t.string :mail_zip4
      t.string :birthdate
      t.string :eligible_date
      t.string :effective_date
      t.string :precinct
      t.string :precsub
      t.string :cong_district
      t.string :state_sd
      t.string :state_hd
      t.string :cnty_precinct

      t.timestamps
    end
  end
end
