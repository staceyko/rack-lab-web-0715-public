require 'pry'
class ServerPort

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    server_port = env["SERVER_PORT"]
    response_body = response.first + " #{server_port}"
    
    [status, headers, [response_body]]
  end
end
