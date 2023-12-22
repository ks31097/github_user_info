# frozen_string_literal: true

require 'pry'
require 'erb'
require './app/helpers/application_helper'

module Action
  class Application
    include ApplicationHelper

    def call(env)
      render('home')
    end
  end
end
