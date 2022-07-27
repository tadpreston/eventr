class VoterUploadsController < ApplicationController
  def new
    @voter_upload = VoterUpload.new
  end

  def create
    voter_upload = VoterUpload.new(voter_upload_params)
    if voter_upload.save
      ProcessVotersJob.perform_later(voter_upload.id)
      flash[:notice] = "Voter file uploaded successfully"
    else
      flash[:error] = "There was a problem uploading the file"
    end
    redirect_to root_path
  end

  private

  def voter_upload_params
    params.require(:voter_upload).permit(:voter_list)
  end
end
