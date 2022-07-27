class Voter < ApplicationRecord
  FIELD_MAP = [:sos_voter_id, :voter_reg_id, :voter_status, :party_code, :last_name, :first_name, :middle_name,
               :name_suffix, :street_number, :street_building, :street_direction, :street_name, :street_type,
               :street_postdir, :unit_type, :unit, :city, :zip, :zip4, :mail1, :mail2, :mail3, :mail_city,
               :mail_state, :mail_zip, :mail_zip4, :birthdate, :eligible_date, :effective_date, :precinct,
               :precsub, :cong_district, :state_sd, :state_hd, :cnty_precinct]
end
