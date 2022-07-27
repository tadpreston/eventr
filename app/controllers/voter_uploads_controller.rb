class VoterUploadsController < ApplicationController
  def new
    @voter_upload = VoterUpload.new
  end

  def create
    voter_upload = VoterUpload.create!(voter_upload_params)
    flash[:notice] = "Voter file uploaded successfully"
    redirect_to root_path
  end

  private

  def voter_upload_params
    params.require(:voter_upload).permit(:voter_list)
  end
end
