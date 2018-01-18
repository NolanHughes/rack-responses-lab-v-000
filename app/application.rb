require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new
    # resp.write "Hello, World."
    # resp.write "\nThe time is ____"
    if Time.now.hour < 12
      binding.pry
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

    resp.finish
  end
end
