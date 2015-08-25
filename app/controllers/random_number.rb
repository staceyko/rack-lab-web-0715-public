require 'pry'
class RandomNumber

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    response_body = response.first + " - #{rand(100)}"
    # binding.pry
    [status, headers, [response_body]]
  end
end
