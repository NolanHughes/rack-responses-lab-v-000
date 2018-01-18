class App
  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World."
    resp.write "The time is ____"
  end
end
