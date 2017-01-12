require 'httparty'
require 'json'

module Roadmap
  include HTTParty

  def get_roadmap(roadmap_id)
    response = self.class.get(api_endpoint("roadmaps/#{roadmap_id}"), headers: { "authorization" => @auth_token })
    @roadmap = JSON.parse(response.body)
  end

  def get_checkpoint(checkpoint_id)
    response = self.class.get(api_endpoint("checkpoints/#{checkpoint_id}"), headers: { "authorization" => @auth_token })
    @checkpoint = JSON.parse(response.body)
  end

end
