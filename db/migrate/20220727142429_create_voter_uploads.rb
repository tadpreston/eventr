class CreateVoterUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :voter_uploads do |t|

      t.timestamps
    end
  end
end
