class App
  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World.\n The time is ____"
  end
end