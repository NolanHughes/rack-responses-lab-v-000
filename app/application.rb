class Application
  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World."
    resp.write "\nThe time is ____"
    resp.finish
  end
end
