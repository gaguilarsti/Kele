require 'httparty'
require 'json'

module Submissions
  include HTTParty

  def create_submission(checkpoint_id, enrollment_id, assign_branch: nil, assign_comm_link: nil, comment: nil)

    # adding comment 

    response = self.class.post(api_endpoint("checkpoint_submissions"), body: {
      "assignment_branch": assign_branch,
      "assignment_commit_link": assign_comm_link,
      "checkpoint_id": checkpoint_id,
      "comment": comment,
      "enrollment_id": enrollment_id }, headers: { "authorization" => @auth_token })

    puts response
  end


end
