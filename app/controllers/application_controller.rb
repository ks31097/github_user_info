# frozen_string_literal: true

require 'pry'
require 'erb'
require 'rack/request'
require './app/helpers/application_helper'

module Action
  class Application
    include ApplicationHelper

    def call(env)
      req = Rack::Request.new(env)
      path = req.path_info
      case path
      when '/'
        render('home')
      else
        render('not_found', status_code: 404)
      end
    end
  end
end
