# frozen_string_literal: true

require 'rack/common_logger'
require 'rack/reloader'
require_relative 'app/controllers/application_controller'

# Run the app
# bundle exec puma
# bundle exec puma -p 3000
use Rack::CommonLogger
use Rack::Reloader, 0
run Action::Application.new
