class ProcessVotersJob < ApplicationJob
  queue_as :default

  def perform(voter_upload_id)
    @voter_upload = VoterUpload.find(voter_upload_id)

    parsed_csv[1..].each do |row|
      Voter.create(field_vals(row))
    end
  end

  private

  def field_vals row
    field_hash = {}
    Voter::FIELD_MAP.each_with_index do |field, i|
      field_hash[field] = row[i]
    end
    field_hash
  end

  def parsed_csv
    CSV.parse(csv)
  end

  def csv
    @voter_upload.voter_list.blob.download
  end
end
