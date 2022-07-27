class VoterUpload < ApplicationRecord
  has_one_attached :voter_list
end
