require 'pry'

class RequestMethod

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    request_method = env["REQUEST_METHOD"]
    response_body = response.first + " #{request_method}"
    # binding.pry
    [status, headers, [response_body]]
  end

end
