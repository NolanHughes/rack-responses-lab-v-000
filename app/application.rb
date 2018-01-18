require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new
    # resp.write "Hello, World."
    # resp.write "\nThe time is ____"
    if Time.now.localtime.hour < 12
      # binding.pry
      resp.write "Morning"
      resp.write "\nIt is now the hour of #{Time.now.hour}"
    else
      resp.write "Afternoon"
      resp.write "\nIt is now the hour of #{Time.now.hour}"
    end

    resp.finish
  end
end
