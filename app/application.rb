require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new

    current_central_time = Time.now.getlocal.hour
    binding.pry
    if current_central_time.hour < 18
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
