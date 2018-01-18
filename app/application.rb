require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new
    # resp.write "Hello, World."
    # resp.write "\nThe time is ____"
    if Time.now.getlocal.hour < 18
      # binding.pry
      resp.write "Morning"
      resp.write "\nIt is now the hour of #{Time.now.getlocal.hour - 6}"
    else
      resp.write "Afternoon"
      resp.write "\nIt is now the hour of #{Time.now.getlocal.hour - 6}"
    end

    resp.finish
  end
end
