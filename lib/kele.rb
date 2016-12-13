require 'httparty'

class Kele
  include HTTParty

  def initialize(username, password)
    response = self.class.post(api_endpoint("sessions"), body: { "email": username, "password": password })
    puts response.code
    raise "Invalid email or password" if response.code == 404
    @auth_token = response["auth_token"]
  end
  
  private

  def api_endpoint(endpoint)
    "https://www.bloc.io/api/v1/#{endpoint}"
  end
end
