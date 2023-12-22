# frozen_string_literal: true

module ApplicationHelper
  def render(template, status_code: 200)
    @page_content = render_template(template)
    body = render_template('layout')
    headers = { 'content-type': 'text/html' }

    [status_code, headers, [body]]
  end

  def render_template(template)
    template = File.read("./app/views/#{template}.html.erb")
    erb = ERB.new(template)
    erb.result(binding)
  end
end
