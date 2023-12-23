# frozen_string_literal: true

require 'rack/common_logger'
require 'rack/reloader'
require_relative 'app/controllers/application_controller'

# bundle exec rackup
use Rack::CommonLogger
use Rack::Reloader, 0
run Action::Application.new
