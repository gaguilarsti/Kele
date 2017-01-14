require 'httparty'
require 'json'

module Messages
  include HTTParty

  def get_messages(page = nil)
    if page == nil
      response = self.class.get(api_endpoint("message_threads"), headers: { "authorization" => @auth_token })
      @messages = JSON.parse(response.body)
    else
      response = self.class.get(api_endpoint("message_threads?page=#{page}"), headers: { "authorization" => @auth_token })
      @messages = JSON.parse(response.body)

    end
  end


end
