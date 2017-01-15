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

  def create_message(sender_email, recipient_id, subject, message)
    response = self.class.post(api_endpoint("messages"), body: {
      "sender": sender_email,
      "recipient_id": recipient_id,
      "subject": subject,
      "stripped-text": message }, headers: { "authorization" => @auth_token })

      puts response 

  end


end
