require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new

    current_central_time = Time.now.getlocal
    binding.pry
    if current_central_time.hour < 12
      # binding.pry
      resp.write "Morning"
      resp.write "\nIt is now the hour of #{Time.now.getlocal.hour}"
    else
      resp.write "Afternoon"
      resp.write "\nIt is now the hour of #{Time.now.getlocal.hour}"
    end

    resp.finish
  end
end
