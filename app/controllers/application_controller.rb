# frozen_string_literal: true

class App
  def call(env)
    [
      200,
      { 'content-type': 'text/html' },
      ['Hello World!']
    ]
  end
end
